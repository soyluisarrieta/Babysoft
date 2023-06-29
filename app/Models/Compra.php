<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Compra
 *
 * @property $idCompra
 * @property $idUsuario
 * @property $idReferencia
 * @property $Cantidad
 * @property $Precio
 * @property $Fecha
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Compra extends Model
{
  protected $primaryKey = 'idCompra';
    
    static $rules = [
		'idUsuario' => 'required',
		'idReferencia' => 'required',
		'Cantidad' => 'required',
		'Precio' => 'required',
		'Fecha' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['idCompra','idUsuario','idReferencia','Cantidad','Precio','Fecha'];



}
