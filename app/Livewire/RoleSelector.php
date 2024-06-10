<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class RoleSelector extends Component
{
    /**
     * Perform role change and redirect based on the selected role.
     *
     * @param string $role
     */
    public function changeRole($role)
    {
        if (!in_array($role, ['student', 'admin'])) {
            return; // Or handle invalid role as needed
        }

        // Perform role change logic here, such as updating session or user role

        // Example: Update session role
        session()->put('role', $role);

        // Example: Redirect to dashboard based on role
        if ($role == 'student') {
            return redirect()->route('student-dashboard');
        } elseif ($role == 'admin') {
            return redirect()->route('admin-dashboard');
        }
    }

    public function render()
    {
        return view('livewire.role-selector');
    }
}


