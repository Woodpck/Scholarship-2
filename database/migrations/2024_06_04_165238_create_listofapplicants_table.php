<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('listofapplicants', function (Blueprint $table) {
            $table->id();
            $table->string('student_no')->nullable();
            $table->string('student_plm_email')->unique();
            $table->string('last_name')->nullable();
            $table->string('first_name')->nullable();
            $table->string('middle_name')->nullable();
            $table->string('address')->nullable();
            $table->integer('age')->nullable();
            $table->string('college');
            $table->enum('course',['BSCS','BSIT','BS ECE','BSCE'])->default('BSCS');
            $table->string('year_level')->nullable();
            $table->string('gender')->nullable();
            $table->string('phone')->nullable();
            $table->string('photo')->nullable();
            $table->decimal('current_gwa', 4, 2)->nullable();
            $table->decimal('household_income', 10, 2)->nullable();
            $table->string('grade_file')->nullable();
            $table->string('form_with_pic')->nullable();
            $table->string('gmc_cert')->nullable();
            $table->string('tax')->nullable();
            $table->string('reason_letter')->nullable();
            $table->string('id_reg_form')->nullable();
            $table->string('brg_cert')->nullable();
            $table->string('single_parent_id')->nullable();
            $table->enum('remarks',['pending','resubmission','approved','scholar'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('listofapplicants');
    }
};
