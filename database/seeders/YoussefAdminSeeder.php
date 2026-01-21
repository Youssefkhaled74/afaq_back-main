<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class YoussefAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admins')->insert([
            'name' => 'Youssef',
            'email' => 'youssef@gmail.com',
            'phone' => '123456789',
            'is_activate' => 1,
            'password' => bcrypt('123123'),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
