@extends('adminlte::page')

@section('template_title')
    {{ $proveedore->name ?? "{{ __('Show') Proveedore" }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Ver') }} Proveedores</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('proveedores.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Idproveedor:</strong>
                            {{ $proveedore->idProveedor }}
                        </div>
                        <div class="form-group">
                            <strong>Cedula:</strong>
                            {{ $proveedore->Cedula }}
                        </div>
                        <div class="form-group">
                            <strong>Nombreproveedor:</strong>
                            {{ $proveedore->NombreProveedor }}
                        </div>
                        <div class="form-group">
                            <strong>Correo:</strong>
                            {{ $proveedore->Correo }}
                        </div>
                        <div class="form-group">
                            <strong>Telefono:</strong>
                            {{ $proveedore->Telefono }}
                        </div>
                        <div class="form-group">
                            <strong>Fecha:</strong>
                            {{ $proveedore->Fecha }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
