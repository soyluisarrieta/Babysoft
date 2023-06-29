@extends('adminlte::page')

@section('template_title')
    {{ __('Update') }} Compra
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">{{ __('Editar') }} Compra</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('compras.update', $compra->idCompra) }}"  role="form" enctype="multipart/form-data">
                            {{ method_field('PATCH') }}
                            @csrf

                            @include('compra.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
