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
        Schema::create('scholarship_other_files', function (Blueprint $table) {
            $table->id();
            $table->string('grade_file')->nullable();
            $table->string('tax')->nullable();
            $table->string('id_reg_form')->nullable();
            $table->string('single_parent_id')->nullable();
            $table->string('form_with_pic')->nullable();
            $table->string('gmc_cert')->nullable();
            $table->string('reason_letter')->nullable();
            $table->string('brg_cert')->nullable();
            $table->string('photo')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('scholarship_other_files');
    }
};
