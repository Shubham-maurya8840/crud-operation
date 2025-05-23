<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->word,                 // Generate a random product name
            'description' => $this->faker->paragraph,     // Generate a random paragraph for the description
            'price' => $this->faker->randomFloat(2, 1, 100),  // Generate a random price between 1 and 100
            'image' => $this->faker->imageUrl(640, 480, 'technics', true),
        ];
    }
}
