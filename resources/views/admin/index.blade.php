@extends('adminlte::page')

@section('content_header')
    <h1></h1>
@stop

@section('content')
    <!-- <button id="btnEliminar">Eliminar</button> -->

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

<form action="{{ route('backup.create') }}" method="GET">
    @csrf
    @can('modulo.dashboard')
        <button type="submit" class="btn btn-primary">Backup (no funciona jaj)</button>
    @endcan    
</form>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        document.getElementById('btnEliminar').addEventListener('click', function() {
            Swal.fire({
                title: '¿Estás seguro?',
                text: 'Esta acción no se puede deshacer.',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Eliminar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire('Eliminado', 'El elemento ha sido eliminado.', 'success');
                } else {
                    Swal.fire('Cancelado', 'La operación ha sido cancelada.', 'info');
                }
            });
        });
    </script>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop
