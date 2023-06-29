@php
    $proveedores = isset($proveedores) ? $proveedores : [];
@endphp

<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group" onkeypress="return validarNumero(event)" required>
            {{ Form::label('Idreferencia') }}
            {{ Form::text('idReferencia', $producto->idReferencia, ['class' => 'form-control' . ($errors->has('idReferencia') ? ' is-invalid' : ''), 'placeholder' => 'idReferencia']) }}
            {!! $errors->first('idReferencia', '<div class="invalid-feedback">:message</div>') !!}
        </div>

        <div class="form-group" required>
            <label for="idProveedor">ID del proveedor</label>
            <select name="idProveedor" class="form-control{{ $errors->has('idProveedor') ? ' is-invalid' : '' }}">
                <option value="">Seleccione un proveedor</option>
                @foreach ($proveedores as $id => $nombre)
                    <option value="{{ $id }}" {{ old('idProveedor') == $id ? 'selected' : '' }}>
                        {{ $id }} - {{ $nombre }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('idProveedor', '<div class="invalid-feedback">:message</div>') !!}
        </div>




        <div class="form-group" onkeypress="return sololetras(event)" required>
            {{ Form::label('Nombre Producto') }}
            {{ Form::text('nombreProducto', $producto->nombreProducto, ['class' => 'form-control' . ($errors->has('nombreProducto') ? ' is-invalid' : ''), 'placeholder' => 'Nombre Producto']) }}
            {!! $errors->first('nombreProducto', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Talla') }}
            {{ Form::select('Talla', ['0-3 meses' => '0-3 meses', '3-6 meses' => '3-6 meses', '6-9 meses' => '6-9 meses'], $producto->Talla, ['class' => 'form-control' . ($errors->has('Talla') ? ' is-invalid' : ''), 'placeholder' => 'Selecciona una talla']) }}
            {!! $errors->first('Talla', '<div class="invalid-feedback">:message</div>') !!}
        </div>

        <div class="form-group" onkeypress="return validarNumero(event)" required>
            {{ Form::label('Cantidad') }}
            {{ Form::text('Cantidad', $producto->Cantidad, ['class' => 'form-control' . ($errors->has('Cantidad') ? ' is-invalid' : ''), 'placeholder' => 'Cantidad']) }}
            {!! $errors->first('Cantidad', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group" required>
            {{ Form::label('Categoria') }}
            {{ Form::select('Categoria', ['Camisa' => 'Camisa', 'Pantalón' => 'Pantalón', 'Conjunto' => 'Conjunto', 'Pijamas' => 'Pijamas'], $producto->Categoria, ['class' => 'form-control' . ($errors->has('Categoria') ? ' is-invalid' : ''), 'placeholder' => 'Selecciona una categoría']) }}
            {!! $errors->first('Categoria', '<div class="invalid-feedback">:message</div>') !!}
        </div>

        <div class="form-group" required>
            {{ Form::label('Foto') }}
            @if ($producto->Foto)
                <div>
                    <img src="{{ asset($producto->Foto) }}" alt="Imagen actual" style="max-height: 200px">
                </div>
            @endif
            {{ Form::file('Foto', ['class' => 'form-control' . ($errors->has('Foto') ? ' is-invalid' : '')]) }}
            {!! $errors->first('Foto', '<div class="invalid-feedback">:message</div>') !!}
        </div>



    </div>
    <div class="float-right">
        <a class="btn btn-primary" href="{{ route('productos.index') }}"> {{ __('Volver') }}</a>
    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">{{ __('Guardar') }}</button>
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