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
        Schema::create('ventas', function (Blueprint $table) {
            $table->bigIncrements('idVenta');
            $table->string('idUsuario');
            $table->string('idCliente');
            $table->string('idReferencia');
            $table->string('Cantidad');
            $table->string('Precio');
            $table->string('ValorTotal');
            $table->date('Fecha')->useCurrent();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
