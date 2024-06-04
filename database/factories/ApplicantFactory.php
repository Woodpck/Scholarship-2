<?php

namespace Database\Factories;

use App\Models\Applicant;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ApplicantFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Applicant::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'student_no' => $this->faker->numerify('20##-#####'),
            'student_plm_email' => $this->faker->unique()->safeEmail,
            'last_name' => fake()->lastName,
            'first_name' => fake()->firstName,
            'middle_name' => fake()->lastName,
            'address' => $this->faker->address,
            'age' => $this->faker->numberBetween(18, 30),
            'college' => $this->faker->word,
            'course' => $this->faker->randomElement(['BSCS','BSIT','BS ECE','BSCE']),
            'year_level' => $this->faker->randomElement(['1st Year', '2nd Year', '3rd Year', '4th Year']),
            'gender' => $this->faker->randomElement(['Male', 'Female']),
            'phone' => $this->faker->numerify('(+63)9## ### ####'),
            'photo' => $this->faker->imageUrl(640, 480, 'people'),
            'current_gwa' => $this->faker->randomFloat(2, 1.00, 5.00),
            'household_income' => $this->faker->randomFloat(2, 10000, 100000),
            'grade_file' => $this->faker->filePath(),
            'form_with_pic' => $this->faker->filePath(),
            'gmc_cert' => $this->faker->filePath(),
            'tax' => $this->faker->filePath(),
            'reason_letter' => $this->faker->filePath(),
            'id_reg_form' => $this->faker->filePath(),
            'brg_cert' => $this->faker->filePath(),
            'single_parent_id' => $this->faker->filePath(),
            'remarks' => $this->faker->randomElement(['pending', 'resubmission', 'approved', 'scholar']),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
