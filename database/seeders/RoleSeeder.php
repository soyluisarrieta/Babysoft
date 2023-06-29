<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $role1 = Role::create(['name' => 'Admin']);
        $role2 = Role::create(['name' => 'Empleado']);

        Permission::create(['name' => 'modulo.dashboard'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'modulo.configuracion'])->syncRoles([$role1]);
        Permission::create(['name' => 'modulo.proveedores'])->syncRoles([$role1]);
        Permission::create(['name' => 'modulo.productos'])->syncRoles([$role1]);
        Permission::create(['name' => 'modulo.compras'])->syncRoles([$role1]);
        Permission::create(['name' => 'modulo.ventas'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'modulo.clientes'])->syncRoles([$role1,$role2]);

        // Permission::create(['name' => 'agregar.clientes'])->syncRoles([$role1,$role2]);
        // Permission::create(['name' => 'detalles.clientes'])->syncRoles([$role1,$role2]);
        // Permission::create(['name' => 'editar.clientes'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'eliminar.clientes'])->syncRoles([$role1]);
        Permission::create(['name' => 'eliminar.ventas'])->syncRoles([$role1]);

    }
}
