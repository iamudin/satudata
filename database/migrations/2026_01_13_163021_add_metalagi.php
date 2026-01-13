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
        Schema::table('elemens', function (Blueprint $table) {
            $table->string('md_pengukuran_dataset')->nullable();
            $table->string('md_tahun')->nullable();
            $table->string('md_definisi')->nullable();
            $table->string('md_kodeindikator')->nullable();
            $table->string('md_bidangurusan')->nullable();
            $table->string('md_frekuensidataset')->nullable();
            $table->string('md_satuandataset')->nullable();
            $table->string('md_sumberexternal')->nullable();
            $table->string('md_dimensidataset')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
