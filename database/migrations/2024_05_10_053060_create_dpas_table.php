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
        Schema::create('dpas', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('penjabaran_id');
            $table->bigInteger('bagian_id');
            $table->bigInteger('kegiatan_id');
            $table->bigInteger('sub_kegiatan_id');
            $table->bigInteger('rekening_id');
            $table->bigInteger('program_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dpas');
    }
};
