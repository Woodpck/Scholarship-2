<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Tests\Feature\ExampleTest;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class ScholarshipUserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {   
        //random full name generator
        $firstName = $this->faker->firstName;
        $middleName = $this->faker->lastName;
        $lastName = $this->faker->lastName;
        $name = $firstName . ' ' . $middleName . ' ' . $lastName;

        //random plm email generator
        $studentNo = $this->faker->numerify('20##-#####');
        $firstInitial = substr($firstName, 0, 1);
        $middleInitial = substr($middleName, 0, 1);
        $plmEmail = strtolower($firstInitial . $middleInitial . $lastName . substr($studentNo, 0, 4) . '@plm.edu.ph');
        $username = strtolower($firstInitial . $middleInitial . $lastName);

        return [
            'student_no' => $studentNo,
            'last_name' => $lastName,
            'first_name' => $firstName,
            'middle_name' => $middleName,
            'biological_sex' => $this->faker->randomElement(['Male', 'Female']),
            'age' => $this->faker->numberBetween(18, 30),
            'college' => fake()->word,
            'degree_program_id' => $this->faker->numberBetween(1, 37),
            'academic_year' => $this->faker->randomElement(['1st Year', '2nd Year', '3rd Year', '4th Year']),
            'plm_email' => $plmEmail,
            'mobile_no' => $this->faker->numerify('(+63)9## ### ####'),
            'grades' => $this->faker->randomFloat(2, 1.00, 2.50),
            'annual_family_income' => $this->faker->randomFloat(2, 10000, 200000),
            'address' => fake()->address,
            'grade_file' => fake()->randomElement(['grade.pdf', 'grade.doc']),
            'tax' => fake()->randomElement(['tax.pdf', 'tax.doc']),
            'id_reg_form' => fake()->randomElement(['id_reg_form.pdf', 'id_reg_form.doc']),
            'single_parent_id' => fake()->randomElement(['single_parent_id.pdf', 'single_parent_id.doc']),
            'form_with_pic' => fake()->randomElement(['form_with_pic.jpg', 'gform_with_pic.png']),
            'gmc_cert' => fake()->randomElement(['gmc_cert.pdf', 'gmc_cert.doc']),
            'reason_letter' => fake()->randomElement(['reason_letter.pdf', 'reason_letter.doc']),
            'brg_cert' => fake()->randomElement(['brgy_cert.pdf', 'brgy_cert.doc']),
            'photo' => fake()->imageUrl('60', '60'),
            'name' => $name,
            'username' => $username,
            'email' => $plmEmail,
            'password' => static::$password ??= Hash::make('password'),
            'email_verified_at' => now(),
            'role' => fake()->randomElement(['admin', 'agent', 'opa', 'user',]),
            'status' => fake()->randomElement(['active', 'inactive']),
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
