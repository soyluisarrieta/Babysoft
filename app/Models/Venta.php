<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Venta
 *
 * @property $idVenta
 * @property $idUsuario
 * @property $idCliente
 * @property $idReferencia
 * @property $Cantidad
 * @property $Precio
 * @property $ValorTotal
 * @property $Fecha
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Venta extends Model
{
  protected $primaryKey = 'idVenta';
    static $rules = [
		'idUsuario' => 'required',
		'idCliente' => 'required',
		'idReferencia' => 'required',
		'Cantidad' => 'required',
		'Precio' => 'required',
		'ValorTotal' => 'required',
		'Fecha' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['idVenta','idUsuario','idCliente','idReferencia','Cantidad','Precio','ValorTotal','Fecha'];



}
