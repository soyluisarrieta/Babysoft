<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\BackupController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application.
| These routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::resource('clientes', App\Http\Controllers\clienteController::class)->middleware('can:modulo.clientes');
Route::resource('proveedores', App\Http\Controllers\proveedoreController::class)->middleware('can:modulo.proveedores');
Route::resource('productos', App\Http\Controllers\productoController::class)->middleware('can:modulo.productos');
Route::resource('compras', App\Http\Controllers\compraController::class)->middleware('can:modulo.compras');
Route::resource('ventas', App\Http\Controllers\ventaController::class)->middleware('can:modulo.ventas');

Route::resource('users', UserController::class)->middleware('can:modulo.configuracion');
Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('usuarios.edit')->middleware('can:modulo.configuracion');
Route::put('/usuarios/{id}', [UserController::class, 'update'])->name('usuarios.update')->middleware('can:modulo.configuracion');
Route::get('/usuarios/crear', [UserController::class, 'create'])->name('usuarios.create')->middleware('can:modulo.configuracion');
Route::post('/usuarios', [UserController::class, 'store'])->name('usuarios.store')->middleware('can:modulo.configuracion');
Route::delete('/usuarios/{id}', [UserController::class, 'destroy'])->name('usuarios.destroy')->middleware('can:modulo.configuracion');

Route::get('/backup', [BackupController::class, 'createBackup'])->name('backup.create');

Route::get('/home', [HomeController::class, 'index'])->name('home')->middleware('auth');
