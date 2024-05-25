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
        Schema::create('detail_spjs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('dpa_id');
            $table->bigInteger('detail_dpa_id');
            $table->bigInteger('spj_id');
            $table->bigInteger('rekening_id');
            $table->bigInteger('program_id');
            $table->bigInteger('satuan');
            $table->bigInteger('harga');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_spjs');
    }
};
