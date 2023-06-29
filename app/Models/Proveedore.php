<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Proveedore
 *
 * @property $idProveedor
 * @property $Cedula
 * @property $NombreProveedor
 * @property $Correo
 * @property $Telefono
 * @property $Fecha
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Proveedore extends Model
{
  protected $primaryKey = 'idProveedor';
    
    static $rules = [
		'Cedula' => 'required',
		'NombreProveedor' => 'required',
		'Correo' => 'required',
		'Telefono' => 'required',
		'Fecha' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['idProveedor','Cedula','NombreProveedor','Correo','Telefono','Fecha'];



}
