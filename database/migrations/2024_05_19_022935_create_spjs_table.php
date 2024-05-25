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
        Schema::create('spjs', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal_spj');
            $table->enum('jenis_spj', ['GU', 'LS', 'TU']);
            $table->date('tgl_kontrak');
            $table->string('no_kontrak');
            $table->date('tgl_baphp');
            $table->string('no_baphp');
            $table->date('tgl_bast');
            $table->string('no_bast');
            $table->tinyText('uraian');
            $table->bigInteger('bagian_id');
            $table->bigInteger('kegiatan_id');
            $table->bigInteger('sub_kegiatan_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('spjs');
    }
};
