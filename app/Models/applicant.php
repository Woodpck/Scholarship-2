<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
    use HasFactory;

    // Specify the table name if it's not the plural of the model name
    protected $table = 'listofapplicants';

    // Specify the attributes that are mass assignable
    protected $fillable = [
        'student_no',
        'student_plm_email',
        'last_name',
        'first_name',
        'middle_name',
        'address',
        'age',
        'college',
        'course',
        'year_level',
        'gender',
        'phone',
        'photo',
        'current_gwa',
        'household_income',
        'grade_file',
        'form_with_pic',
        'gmc_cert',
        'tax',
        'reason_letter',
        'id_reg_form',
        'brg_cert',
        'single_parent_id',
        'remarks',
    ];

    public function scopeSearch($query, $value){
        $query->where('last_name','like',"{$value}%");
    }
}
