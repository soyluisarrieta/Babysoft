@extends('adminlte::page')

@section('template_title')
    Proveedore
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Proveedores') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('proveedores.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar Proveedor') }}
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
                                        
										<th>IdProveedor</th>
										<th>Cedula</th>
										<th>Nombreproveedor</th>
										<th>Correo</th>


                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($proveedores as $proveedore)
                                        <tr>
                                            
											<td>{{ $proveedore->idProveedor }}</td>
											<td>{{ $proveedore->Cedula }}</td>
											<td>{{ $proveedore->NombreProveedor }}</td>
											<td>{{ $proveedore->Correo }}</td>

                                            <td>
                                                <form action="{{ route('proveedores.destroy',$proveedore->idProveedor) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('proveedores.show',$proveedore->idProveedor) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Ver') }}</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('proveedores.edit',$proveedore->idProveedor) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Editar') }}</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="confirmarEliminacion(event)"><i class="fa fa-fw fa-trash"></i> {{ __('Eliminar') }}</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $proveedores->links() !!}
            </div>
        </div>
    </div>
    <script>
        function confirmarEliminacion(event) {
            event.preventDefault();

            if (confirm('¿Estás seguro de que deseas ELIMINAR este proveedor?')) {
                event.target.closest('form').submit();
            }
        }
    </script>
@endsection
