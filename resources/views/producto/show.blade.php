@extends('adminlte::page')

@section('template_title')
    {{ $producto->name ?? "{{ __('Show') Producto" }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Ver') }} Producto</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('productos.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Idreferencia:</strong>
                            {{ $producto->idReferencia }}
                        </div>
                        <div class="form-group">
                            <strong>Idproveedor:</strong>
                            {{ $producto->idProveedor }}
                        </div>
                        <div class="form-group">
                            <strong>Nombreproducto:</strong>
                            {{ $producto->nombreProducto }}
                        </div>
                        <div class="form-group">
                            <strong>Tallas:</strong>
                            {{ $producto->Talla }}
                        </div>
                        <div class="form-group">
                            <strong>Cantidad:</strong>
                            {{ $producto->Cantidad }}
                        </div>
                        <div class="form-group">
                            <strong>Categoria:</strong>
                            {{ $producto->Categoria }}
                        </div>
                        <div class="form-group">
                            <strong>Foto:</strong>
                            @if ($producto->Foto)
                                <div>
                                    <img src="data:image/jpeg;base64,{{ base64_encode($producto->Foto) }}" alt="Imagen Producto" style="max-height: 200px">
                                </div>
                            @endif
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
