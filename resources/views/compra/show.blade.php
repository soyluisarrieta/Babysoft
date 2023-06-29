@extends('adminlte::page')

@section('template_title')
    {{ $compra->name ?? "{{ __('Show') Compra" }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Ver') }} Compra</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('compras.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Idcompra:</strong>
                            {{ $compra->idCompra }}
                        </div>
                        <div class="form-group">
                            <strong>Idusuario:</strong>
                            {{ $compra->idUsuario }}
                        </div>
                        <div class="form-group">
                            <strong>Idreferencia:</strong>
                            {{ $compra->idReferencia }}
                        </div>
                        <div class="form-group">
                            <strong>Cantidad:</strong>
                            {{ $compra->Cantidad }}
                        </div>
                        <div class="form-group">
                            <strong>Precio:</strong>
                            {{ $compra->Precio }}
                        </div>
                        <div class="form-group">
                            <strong>Fecha:</strong>
                            {{ $compra->Fecha }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
