<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Producto
 *
 * @property $idReferencia
 * @property $idProveedor
 * @property $nombreProducto
 * @property $Talla
 * @property $Cantidad
 * @property $Categoria
 * @property $Foto
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Producto extends Model
{
  protected $primaryKey = 'idReferencia';
    static $rules = [
    'idReferencia' => 'required',
		'idProveedor' => 'required',
		'nombreProducto' => 'required',
		'Talla' => 'required',
		'Cantidad' => 'required',
		'Categoria' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['idReferencia','idProveedor','nombreProducto','Talla','Cantidad','Categoria','Foto'];



}
