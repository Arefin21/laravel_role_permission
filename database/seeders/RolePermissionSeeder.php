<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       

        // Create Roles
        $roleSuperAdmin = Role::create(['name'=>'superadmin']);
        $roleAdmin = Role::create(['name' => 'admin']);
        $roleEditor = Role::create(['name'=>'editor']);
        $roleUser = Role::create(['name'=>'user']);


        // Permission List as array
        $permissions=[
            [
                //Dashboard
                'group_name'=>'dashboard',
                'permissions'=>[
                    'dashboard.view',
                    'dashboard.edit',
                ]
            ],
            
            [
                //Blog Permissions
                'group_name'=>'blog',
                'permissions'=>[
                    'blog.create',
                    'blog.view',
                    'blog.edit',
                    'blog.delete',
                    'blog.approve',
        
                ]
            ],
            [
                 //Admin Permissions
                'group_name'=>'admin',
                'permissions'=>[
                    'admin.create',
                    'admin.view',
                    'admin.edit',
                    'admin.delete',
                    'admin.approve',
        
                ]
            ],
            [
                //Role Permissions
               'group_name'=>'role',
               'permissions'=>[
                   'role.create',
                   'role.view',
                   'role.edit',
                   'role.delete',
                   'role.approve',
       
               ]
           ],
            
            [
                //Profile Permissions
               'group_name'=>'profile',
               'permissions'=>[
                   'profile.view',
                   'profile.edit',
       
               ]
           ],


        ];

    //Create and Assign Permissions
    //$permission = Permission::create(['name' => 'dashboard.view']);
    for($i = 0; $i < count($permissions); $i++){
        $permissionGroup=$permissions[$i]['group_name'];
        for($j=0; $j< count($permissions[$i]['permissions']); $j++){
//Create Permission
            $permission = Permission::create(['name' => $permissions[$i]['permissions'][$j],'group_name'=>$permissionGroup]);
            $roleSuperAdmin->givePermissionTo($permission);
            $permission->assignRole($roleSuperAdmin);
            }   
        }
    }
}
