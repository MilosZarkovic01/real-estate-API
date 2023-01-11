<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\RealEstate>
 */
class RealEstateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            /*'address'=>$this->faker->address(),
            'city'=>$this->faker->city(),
            'sellingPrice'=>$this->faker->number(),
            'type_of_real_estate_id'=>\App\Models\TypeOfRealEstate::factory(),
            'user_id'=>\App\Models\User::factory(),*/
        ];
    }
}
