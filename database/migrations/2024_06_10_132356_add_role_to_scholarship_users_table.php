<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRoleToScholarshipUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('scholarship_users', function (Blueprint $table) {
            $table->string('role')->default('student'); // Adds a 'role' column with a default value of 'student'
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('scholarship_users', function (Blueprint $table) {
            $table->dropColumn('role'); // Removes the 'role' column
        });
    }
}
