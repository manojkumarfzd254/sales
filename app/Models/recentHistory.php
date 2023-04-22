<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class recentHistory extends Model
{
    use HasFactory;
    protected $table = 'recent_history';
    protected $fillable = [
        "module_name",
        "perform_id",
        "action",
        "created_by",
        "updated_by",
    ];
}
