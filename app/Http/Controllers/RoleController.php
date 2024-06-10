<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class RoleController extends Controller
{
    /**
     * Change the role of the user and redirect to the corresponding dashboard.
     *
     * @param string $role
     * @return \Illuminate\Http\RedirectResponse
     */
    public function changeRole($role)
    {
        // Validate role
        if (!in_array($role, ['student', 'admin'])) {
            abort(404); // Or handle invalid role as needed
        }

        // Set role in session
        Session::put('role', $role);

        // Redirect to dashboard based on role
        return redirect()->route($role . '-dashboard');
    }

    /**
     * Display the student dashboard.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function studentDashboard()
    {
        return view('student.student_dashboard'); // Create this view
    }

    /**
     * Display the admin dashboard.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function adminDashboard()
    {
        return view('admin.admin_dashboard'); // Create this view
    }
}


