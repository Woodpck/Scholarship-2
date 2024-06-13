<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QualifiedApplicant extends Model
{
    use HasFactory;

    protected $fillable = [
        'applicant_id',
        // Add any additional fillable attributes here
        // Example:
        // 'qualification',
        // 'qualification_date',
    ];

    // Define the relationship to Applicant model
    public function applicant()
    {
        return $this->belongsTo(Applicant::class);
    }

    public function scopeSearch($query, $value){
        $query->where('last_name','like',"{$value}%");
    }
}
