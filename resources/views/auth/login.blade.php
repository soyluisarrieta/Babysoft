<style>
    .login-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        background-color: #fff;
    }

    .login-form {
        width: 300px;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .login-form-header {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
        color: #333;
    }

    .login-form-label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #333;
    }

    .login-form-input {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 14px;
    }

    .login-form-submit {
        width: 100%;
        padding: 10px;
        background-color: #1e88e5;
        border: none;
        border-radius: 4px;
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }

    .login-form-submit:hover {
        background-color: #1565c0;
    }

    .login-form-link {
        display: block;
        margin-top: 10px;
        text-align: center;
        color: #1e88e5;
        text-decoration: none;
    }

    .login-form-link:hover {
        text-decoration: underline;
    }
</style>
<title>Ingreso</title>
<div class="login-container">
    <img src="vendor/adminlte/dist/img/LogoSinFondo.png" alt="Logo" width="250px" height="130px">

    <div class="login-form">
        <div class="login-form-header">Ingreso</div>
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <label for="email" class="login-form-label">Correo</label>
            <input id="email" type="email" class="login-form-input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
            <br>
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            <br>
            <label for="password" class="login-form-label">Contraseña</label>
            <input id="password" type="password" class="login-form-input @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            <br>
            <br>
            <button type="submit" class="login-form-submit">
                Ingresar
            </button>

            <a class="login-form-link" href="{{ route('register') }}">¿No tienes cuenta? Regístrate</a>
            
            @if (Route::has('password.request'))
                <a class="login-form-link" href="{{ route('password.request') }}">
                    ¿Olvidaste tu contraseña?
                </a>
            @endif
        </form>
    </div>
</div>
