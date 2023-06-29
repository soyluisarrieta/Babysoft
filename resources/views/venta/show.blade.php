@extends('adminlte::page')

@section('template_title')
    {{ $venta->name ?? "{{ __('Show') Venta" }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Ver') }} Venta</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('ventas.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Idventa:</strong>
                            {{ $venta->idVenta }}
                        </div>
                        <div class="form-group">
                            <strong>Idusuario:</strong>
                            {{ $venta->idUsuario }}
                        </div>
                        <div class="form-group">
                            <strong>Idcliente:</strong>
                            {{ $venta->idCliente }}
                        </div>
                        <div class="form-group">
                            <strong>Idreferencia:</strong>
                            {{ $venta->idReferencia }}
                        </div>
                        <div class="form-group">
                            <strong>Cantidad:</strong>
                            {{ $venta->Cantidad }}
                        </div>
                        <div class="form-group">
                            <strong>Precio:</strong>
                            {{ $venta->Precio }}
                        </div>
                        <div class="form-group">
                            <strong>Valortotal:</strong>
                            {{ $venta->ValorTotal }}
                        </div>
                        <div class="form-group">
                            <strong>Fecha:</strong>
                            {{ $venta->Fecha }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
