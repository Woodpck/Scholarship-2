<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use PhpParser\Node\NullableType;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('scholarship_users', function (Blueprint $table) {
            //student information field names from the data dictionary
            $table->string('student_no')->nullable();
            $table->string('last_name')->nullable();
            $table->string('first_name')->nullable();
            $table->string('middle_name')->nullable();
            $table->string('biological_sex')->nullable();
            $table->string('age')->nullable();
            $table->string('college')->nullable();
            $table->string('degree_program_id')->nullable();
            $table->string('academic_year')->nullable();
            $table->string('plm_email')->nullable();
            $table->string('mobile_no')->nullable();
            $table->string('phone')->nullable();
            $table->decimal('grades', 4, 2)->nullable(); //formerly current_gwa
            $table->decimal('annual_family_income', 10, 2)->nullable();
            //student information field that is questionable
            $table->string('address')->nullable();
            //student files field names from the data dictionary
            $table->string('grade_file')->nullable();
            $table->string('tax')->nullable();
            $table->string('id_reg_form')->nullable();
            $table->string('single_parent_id')->nullable();
            $table->string('form_with_pic')->nullable();
            $table->string('gmc_cert')->nullable();
            $table->string('reason_letter')->nullable();
            $table->string('brg_cert')->nullable();
            $table->string('photo')->nullable();
            //fields responsible for users logging into the site
            $table->id();
            $table->string('name');
            $table->string('username')->nullable();
            $table->string('email')->unique();
            $table->string('password');
            $table->timestamp('email_verified_at')->nullable();
            $table->enum('role',['admin','agent','opa','user','student',])->default('user');
            $table->enum('status',['active','inactive'])->default('active');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('scholarship_users');
    }
};
