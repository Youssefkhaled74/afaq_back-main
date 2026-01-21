<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('icon', 255)->nullable();
            $table->string('img', 255)->nullable();
            $table->string('title', 1255)->nullable();
            $table->integer('category_id')->nullable();
            $table->integer('writer_id')->nullable();
            $table->text('desc')->nullable();
            $table->text('features')->nullable();
            $table->text('importance')->nullable();
            $table->text('what_we_offer')->nullable();
            $table->json('other_points')->nullable();
            $table->integer('students_count')->default(0);
            $table->tinyInteger('article_type')->default(0)->comment('1 -> Service , 2 => Articles , 3 => Files , 4 => Courses');
            $table->dateTime('deleted_at')->nullable();
            $table->tinyInteger('is_recommended')->default(0);
            $table->tinyInteger('is_activate')->default(1);
            
            $table->string('article_file', 1255)->nullable();
            $table->string('linkedin', 1255)->nullable();
            $table->string('whatsapp', 1255)->nullable();
            $table->string('facebook', 1255)->nullable();
            $table->string('email', 1255)->nullable();
            $table->string('x_url', 1255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
};
