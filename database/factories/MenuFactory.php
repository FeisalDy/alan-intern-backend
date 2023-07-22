<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Menu;
use App\Models\JenisMenu;

class MenuFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Menu::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Get a random jenis_menu_id from existing jenis_menu records
        $jenisMenuId = JenisMenu::inRandomOrder()->first()->id;

        $imagePath = $this->faker->image('storage/app/public/images', 200, 200, null, false);

        return [
            'nama' => $this->faker->name(),
            'harga' => $this->faker->randomFloat(2, 10, 100),
            'gambar' => $imagePath, // Save the file path in the 'gambar' column
            'jenis_menu_id' => $jenisMenuId,
        ];
    }
}
