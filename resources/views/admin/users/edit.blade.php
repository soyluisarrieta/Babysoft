@extends('adminlte::page')

@section('content_header')
    <h1>Editar Usuario</h1>
@stop

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span id="card_title">
                                {{ __('Usuarios') }}
                            </span>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <form id="form" method="POST" action="{{ route('usuarios.update', $user->id) }}">
                            @csrf
                            @method('PUT')

                            <div class="form-group" onkeypress="return sololetras(event)">
                                <label for="name">Nombre Completo:</label>
                                <input type="text" name="name" value="{{ $user->name }}" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" value="{{ $user->email }}" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="roles">Roles:</label>
                                @foreach ($roles as $role)
                                    <div>
                                        <input type="checkbox" name="roles[]" value="{{ $role->name }}" {{ $user->hasRole($role->name) ? 'checked' : '' }}>
                                        <label>{{ $role->name }}</label>
                                    </div>
                                @endforeach
                            </div>
                            <div class="float-right">
                                <a class="btn btn-primary" href="{{ route('users.index') }}"> {{ __('Volver') }}</a>
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

@endsection

