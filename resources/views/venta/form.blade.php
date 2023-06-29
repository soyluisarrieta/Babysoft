<div class="box box-info padding-1">
    <div class="box-body">
        
    <div class="form-group" required>
            <label for="idUsuario">Seleccionar usuario</label>
            <select class="form-control" name="idUsuario">
                <option value="">Seleccionar usuario</option>
                @foreach ($usuarios as $usuario)
                    <option value="{{ $usuario->id }}">{{ $usuario->name }}</option>
                @endforeach
            </select>
            @error('idUsuario')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group" onkeypress="return validarNumero(event)" required>
            {{ Form::label('idCliente') }}
            {{ Form::select('idCliente', $clientes, $venta->idCliente, ['class' => 'form-control' . ($errors->has('idCliente') ? ' is-invalid' : ''), 'placeholder' => 'Selecciona un cliente']) }}
            {!! $errors->first('idCliente', '<div class="invalid-feedback">:message</div>') !!}
        </div>



        <div class="form-group" required>
            {{ Form::label('idReferencia') }}
            <select name="idReferencia" class="form-control{{ $errors->has('idReferencia') ? ' is-invalid' : '' }}">
                <option value="">Selecciona una referencia</option>
                @foreach ($productos as $idReferencia => $nombreProducto)
                    <option value="{{ $idReferencia }}" {{ $venta->idReferencia == $idReferencia ? 'selected' : '' }}>
                        {{ $idReferencia }} - {{ $nombreProducto }}
                    </option>
                @endforeach
            </select>
            {!! $errors->first('idReferencia', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group" onkeypress="return validarNumero(event)" required>
            {{ Form::label('Cantidad') }}
            {{ Form::text('Cantidad', $venta->Cantidad, ['id' => 'Cantidad', 'class' => 'form-control' . ($errors->has('Cantidad') ? ' is-invalid' : ''), 'placeholder' => 'Cantidad', 'onkeyup' => 'calcularValorTotal()']) }}
            {!! $errors->first('Cantidad', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group" onkeypress="return validarNumero(event)" required>
            {{ Form::label('Precio Unitario') }}
            {{ Form::text('Precio', $venta->Precio, ['id' => 'Precio', 'class' => 'form-control' . ($errors->has('Precio') ? ' is-invalid' : ''), 'placeholder' => 'Precio Unitario', 'onkeyup' => 'calcularValorTotal()']) }}
            {!! $errors->first('Precio', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group" required>
            {{ Form::label('ValorTotal') }}
            {{ Form::text('ValorTotal', null, ['id' => 'ValorTotal', 'class' => 'form-control', 'placeholder' => 'Valor Total', 'readonly']) }}
            {!! $errors->first('ValorTotal', '<div class="invalid-feedback">:message</div>') !!}
        </div>

        <script>
            function calcularValorTotal() {
                var cantidad = parseInt(document.getElementById('Cantidad').value) || 0;
                var precio = parseInt(document.getElementById('Precio').value) || 0;
                var valorTotal = cantidad * precio;
                document.getElementById('ValorTotal').value = valorTotal.toString();
            }
        </script>



        <div class="form-group">
            {{ Form::label('Fecha') }}
            {{ Form::date('Fecha', $fechaActual, ['class' => 'form-control' . ($errors->has('Fecha') ? ' is-invalid' : ''), 'placeholder' => 'Fecha']) }}
            {!! $errors->first('Fecha', '<div class="invalid-feedback">:message</div>') !!}
        </div>

    </div>
    <div class="float-right">
        <a class="btn btn-primary" href="{{ route('ventas.index') }}"> {{ __('Volver') }}</a>
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