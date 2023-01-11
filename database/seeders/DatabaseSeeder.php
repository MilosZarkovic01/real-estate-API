<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\RealEstate::truncate();
        \App\Models\TypeOfRealEstate::truncate();
        \App\Models\User::truncate();
        
        $user = \App\Models\User::factory()->create();

        $type1 = \App\Models\TypeOfRealEstate::create([
            'name'=>"Kuca"
            ]);

        $type2 = \App\Models\TypeOfRealEstate::create([
            'name'=>"Stan"
            ]);

        $type3 = \App\Models\TypeOfRealEstate::create([
            'name'=>"Lokal"
             ]);


        $re1 = \App\Models\RealEstate::create([
            'address'=>"Krajiska 51",
            'city'=> "Beograd",
            'sellingPrice'=> 120000,
            'type_of_real_estate_id'=> $type1->id,
            'user_id'=> $user->id
        ]);

        $re2 = \App\Models\RealEstate::create([
            'address'=>"Branka Plecasa 18",
            'city'=> "Beograd",
            'sellingPrice'=> 100000,
            'type_of_real_estate_id'=> $type1->id,
            'user_id'=> $user->id
        ]);

        $re3 = \App\Models\RealEstate::create([
            'address'=>"Makedonska 44",
            'city'=> "Kragujevac",
            'sellingPrice'=> 600000,
            'type_of_real_estate_id'=> $type2->id,
            'user_id'=> $user->id
        ]);

        //\App\Models\RealEstate::factory(5)->create();

        

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
