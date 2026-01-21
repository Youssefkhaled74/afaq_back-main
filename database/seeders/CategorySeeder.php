<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Parent categories
        DB::table('categories')->insert([
            [
                'name' => 'Blog',
                'parent_id' => null,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Media',
                'parent_id' => null,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Services',
                'parent_id' => null,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

        // Sub categories for Blog (parent_id = 1)
        DB::table('categories')->insert([
            [
                'name' => 'Technology',
                'parent_id' => 1,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Business',
                'parent_id' => 1,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Lifestyle',
                'parent_id' => 1,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

        // Sub categories for Media (parent_id = 2)
        DB::table('categories')->insert([
            [
                'name' => 'Videos',
                'parent_id' => 2,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Images',
                'parent_id' => 2,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Documents',
                'parent_id' => 2,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

        // Sub categories for Services (parent_id = 3)
        DB::table('categories')->insert([
            [
                'name' => 'Consulting',
                'parent_id' => 3,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Development',
                'parent_id' => 3,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Support',
                'parent_id' => 3,
                'is_activate' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
