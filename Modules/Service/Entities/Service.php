<?php

namespace Modules\Service\Entities;

use App\Models\BaseModel;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Comment\Entities\Presenters\CommentPresenter;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;
use Modules\Department\Entities\Department;
use Modules\Form\Entities\ServiceForm;

class Service extends BaseModel
{
    use HasFactory;
    use LogsActivity;
    use CommentPresenter;
    use SoftDeletes;

    protected $table = 'services';

    protected $dates = [
        'deleted_at',
        'published_at',
        'moderated_at',
    ];

    public function department()
    {
        return $this->belongsTo(Department::class,'department_id','id');
    }

    public function form()
    {
        return $this->belongsTo(ServiceForm::class,'form_id','id');
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logUnguarded()
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs()
            ->useLogName($this->table);
    }



    /**
     * Purifiy Comment field value.
     */
    public function setCommentAttribute($value)
    {
        $this->attributes['comment'] = clean($value);
    }

    public function setUserIdAttribute($value)
    {
        $this->attributes['user_id'] = $value;

        if ($value) {
            $this->attributes['user_name'] = User::findOrFail($value)->name;
        }
    }

    /**
     * Set the published at
     * If no value submitted use the 'Title'.
     *
     * @param [type]
     */
    public function setPublishedAtAttribute($value)
    {
        $this->attributes['published_at'] = $value;

        if (empty($value) && $this->attributes['status'] == 1) {
            $this->attributes['published_at'] = Carbon::now();
        }
    }

    public function setModeratedAtAttribute($value)
    {
        $this->attributes['moderated_at'] = $value;

        if (empty($value)) {
            $this->attributes['moderated_at'] = Carbon::now();
        }
    }

    /**
     * Get the list of Published Articles.
     *
     * @param [type] $query [description]
     * @return [type] [description]
     */
    public function scopePublished($query)
    {
        return $query->where('status', '=', '1')
                        ->whereDate('published_at', '<=', Carbon::today()
                        ->toDateString());
    }

    /**
     * Get the list of Recently Published Articles.
     *
     * @param [type] $query [description]
     * @return [type] [description]
     */
    public function scopeRecentlyPublished($query)
    {
        return $query->where('status', '=', '1')
                        ->whereDate('published_at', '<=', Carbon::today()->toDateString())
                        ->orderBy('published_at', 'desc');
    }

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    protected static function newFactory()
    {
        return \Modules\Comment\Database\Factories\CommentFactory::new();
    }
}
