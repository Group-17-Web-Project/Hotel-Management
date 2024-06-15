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
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->string('room_title')->nullable();
            $table->string('image')->nullable();
            $table->string('description')->nullable();
            $table->string('price')->nullable();
            $table->string('wifi')->default('yes');
            $table->string('n_bathroom')->nullable();
            $table->string('n_bed')->nullable();
            $table->string('n_people')->nullable();
            $table->string('room_type')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
};
