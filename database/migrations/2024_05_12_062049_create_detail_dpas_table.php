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
        Schema::create('detail_dpas', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('dpa_id');
            $table->string('nama_barang');
            $table->bigInteger('volume');
            $table->string('satuan');
            $table->bigInteger('harga');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_dpas');
    }
};
