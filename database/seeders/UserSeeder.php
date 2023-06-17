<?php
namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user=User::where('email','arefin@gmail.com')->first();
        if(is_null($user)){

        $user=new User();
        $user->name="Arefin";
        $user->email="arefin@gmail.com";
        $user->password=Hash::make('1234567');
        $user->save();
        }
    }
}
