<?php

namespace App\Http\Controllers;

use App\Models\Venta;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use app\Models\User;
use App\Models\Producto;
use App\Models\Cliente;

/**
 * Class VentaController
 * @package App\Http\Controllers
 */
class VentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ventas = Venta::paginate();

        return view('venta.index', compact('ventas'))
            ->with('i', (request()->input('page', 1) - 1) * $ventas->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fechaActual = Carbon::now()->toDateString();
        $venta = new Venta();
        $usuarios = User::all();
        $productos = Producto::pluck('nombreProducto', 'idReferencia')->toArray();
        $clientes = Cliente::select('id', 'Nombre', 'Apellido')->get()
            ->map(function ($cliente) {
                return [
                    'id' => $cliente->id,
                    'nombre_completo' => $cliente->Nombre . ' ' . $cliente->Apellido,
                ];
            })
            ->pluck('nombre_completo', 'id')
            ->toArray();


        return view('venta.create', compact('venta','fechaActual', 'usuarios', 'productos','clientes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Venta::$rules);

        $venta = Venta::create($request->all());

        return redirect()->route('ventas.index')
            ->with('success', 'Venta created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $venta = Venta::find($id);

        return view('venta.show', compact('venta'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $fechaActual = Carbon::now()->toDateString();
        $venta = Venta::find($id);
        $usuarios = User::all();
        $productos = Producto::pluck('nombreProducto', 'idReferencia')->toArray();
        $clientes = Cliente::select('id', 'Nombre', 'Apellido')->get()
        ->map(function ($cliente) {
            return [
                'id' => $cliente->id,
                'nombre_completo' => $cliente->Nombre . ' ' . $cliente->Apellido,
            ];
        })
        ->pluck('nombre_completo', 'id')
        ->toArray();

        return view('venta.edit', compact('venta','usuarios','clientes','productos','clientes','fechaActual'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Venta $venta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Venta $venta)
    {
        request()->validate(Venta::$rules);

        $venta->update($request->all());

        return redirect()->route('ventas.index')
            ->with('success', 'Venta updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $venta = Venta::find($id)->delete();

        return redirect()->route('ventas.index')
            ->with('success', 'Venta deleted successfully');
    }
}
