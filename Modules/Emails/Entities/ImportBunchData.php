<?php

namespace Modules\Emails\Entities;

use App\Models\BaseModel;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Comment\Entities\Presenters\CommentPresenter;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class ImportBunchData extends BaseModel
{
    use HasFactory;
    use LogsActivity;
    use CommentPresenter;
    use SoftDeletes;

    protected $table = 'import_bunch_data';
    protected $fillable = [
        'file_name',
        'user_id',
        'upload_data_count',
        'verified_data_count',
        'duplicate_data_count',
        'failed_data_count',
        'verify_status',
        'status'
    ];

    protected $dates = [
        'deleted_at',
        'created_at',
        'updated_at',
    ];


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logUnguarded()
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs()
            ->useLogName($this->table);
    }

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
        return \Modules\Comment\Database\Factories\CommentFactory::new ();
    }
}
