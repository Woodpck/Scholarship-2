<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
// use DB;


class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('scholarship_users')->insert([

            //agent
            [
                'name' =>'Admin',
                'username' => 'admin',
                'email' => 'admin@plm.edu.ph',
                'password' => Hash::make('1111'),
                'role' => 'agent',
                'status' => 'active',
                
            ],
            //user
            [
                'name' =>'User',
                'username' => 'user',
                'email' => 'user@gmail.com',
                'password' => Hash::make('1111'),
                'role' => 'user',
                'status' => 'active',
                
            ],
            //student
            [
                'name' =>'Student',
                'username' => 'student',
                'email' => 'student@plm.edu.ph',
                'password' => Hash::make('1111'),
                'role' => 'student',
                'status' => 'active',
                
            ],

            [
                'name' =>'Opa',
                'username' => 'opa',
                'email' => 'opa@plm.edu.ph',
                'password' => Hash::make('1111'),
                'role' => 'opa',
                'status' => 'active',
                
            ],


            ]);

        
    }
}
