@extends('adminlte::page')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span id="card_title">
                                {{ __('Clientes') }}
                            </span>
                            <div class="float-right">
                                <a href="{{ route('clientes.create') }}" class="btn btn-primary btn-sm float-right" data-placement="left">
                                    {{ __('Agregar Cliente') }}
                                </a>
                            </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Email</th>
                                        <th>Telefono</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($clientes as $cliente)
                                        <tr>
                                            <td>{{ $cliente->id  }}</td>
                                            <td>{{ $cliente->Nombre }}</td>
                                            <td>{{ $cliente->Apellido }}</td>
                                            <td>{{ $cliente->Email }}</td>
                                            <td>{{ $cliente->Telefono }}</td>
                                            <td>
                                                <form class="formulario-eliminar" action="{{ route('clientes.destroy',$cliente->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary" href="{{ route('clientes.show',$cliente->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Ver') }}</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('clientes.edit',$cliente->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Editar') }}</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    @can('eliminar.clientes')
                                                        <button type="submit" class="btn btn-danger btn-sm" onclick="confirmarEliminacion(event)"><i class="fa fa-fw fa-trash"></i> {{ __('Eliminar') }}</button>
                                                    @endcan
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $clientes->links() !!}
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const forms = document.querySelectorAll('form.formulario-eliminar');
            forms.forEach(function(form) {
                form.addEventListener('submit', function(event) {
                    event.preventDefault(); // Evitar que se envíe el formulario automáticamente

                    const btnEliminar = form.querySelector('.btnEliminar');
                    
                    // Mostrar la SweetAlert de confirmación
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
                            // Habilitar el botón de eliminar y enviar el formulario de eliminación
                            btnEliminar.disabled = false;
                            form.submit(); // Enviar el formulario de eliminación
                        }
                    });
                });
            });
        });
    </script>


    <script>
        function confirmarEliminacion(event) {
            event.preventDefault();

            if (confirm('¿Estás seguro de que deseas ELIMINAR este cliente?')) {
                event.target.closest('form').submit();
            }
        }
    </script>


    <script>
        function validarNumero(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) return true;
            patron = /[0-9]/;
            te = String.fromCharCode(tecla);
            return patron.test(te);
        }

        function sololetras(e) {
            key = e.keyCode || e.which;
            tecla = String.fromCharCode(key).toLowerCase();
            letras = "àèìòùabcdefghijklmnñopqrstuvwxyz ";
            especiales = "8-37-38-46-164";

            tecla_especial = false;
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                return false;
            }
        }

        document.getElementById('form').addEventListener('submit', function(event) {
            var correo = document.getElementById('email').value;
            if (!validarCorreoElectronico(correo)) {
                alert('Correo electrónico inválido');
                event.preventDefault(); // Evitar que se envíe el formulario
            }
        });

        function validarCorreoElectronico(correo) {
            // Expresión regular para validar el formato de correo electrónico
            var patron = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return patron.test(correo);
        }
    </script>
@stop
