<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;
use App\Models\Proveedore;
use App\Models\Compra;


/**
 * Class ProductoController
 * @package App\Http\Controllers
 */
class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productos = Producto::paginate();

        return view('producto.index', compact('productos'))
            ->with('i', (request()->input('page', 1) - 1) * $productos->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $producto = new Producto();
        
        $proveedores = Proveedore::pluck('NombreProveedor', 'idProveedor')->toArray();
    
        return view('producto.create', compact('producto', 'proveedores'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'idReferencia' => 'required',
            'idProveedor' => 'required',
            'nombreProducto' => 'required',
            'Talla' => 'required',
            'Cantidad' => 'required',
            'Categoria' => 'required',
            'Foto' => 'image|mimes:jpeg,png,jpg,gif|max:2048' // Asegura que el archivo sea una imagen válida y no supere los 2MB
        ]);
    
        $producto = new Producto();
        $producto->idReferencia = $request->idReferencia;
        $producto->idProveedor = $request->idProveedor;
        $producto->nombreProducto = $request->nombreProducto;
        $producto->Talla = $request->Talla;
        $producto->Cantidad = $request->Cantidad;
        $producto->Categoria = $request->Categoria;
    
        if ($request->hasFile('Foto')) {
            $file = $request->file('Foto');
            $imageData = file_get_contents($file);
            $producto->Foto = $imageData;
        }
    
        $producto->save();
    
        return redirect()->route('productos.index')
            ->with('success', 'Producto created successfully.');
    }
    

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $producto = Producto::find($id);

        return view('producto.show', compact('producto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $producto = Producto::find($id);
        $proveedores = Proveedore::pluck('idProveedor')->toArray();
    
        return view('producto.edit', compact('producto', 'proveedores'));
    }
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Producto $producto)
    {
        request()->validate(Producto::$rules);

        $producto->update($request->all());

        return redirect()->route('productos.index')
            ->with('success', 'Producto updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $producto = Producto::find($id)->delete();

        return redirect()->route('productos.index')
            ->with('success', 'Producto deleted successfully');
    }

}
