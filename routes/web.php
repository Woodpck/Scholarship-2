<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AgentController;
use App\Http\Controllers\studentController;
use App\Http\Controllers\OpaController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('student.student_dashboard');
});

    

Route::get('/dashboard', function () {
    return view('dashboard');
});

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

//Admin Group Middleware
    Route::get('/admin/dashboard', [AdminController::class, 
    'AdminDashboard'])->name('admin.dashboard');

    Route::get('/admin/logout', [AdminController::class, 
    'AdminLogout'])->name('admin.logout');

    Route::get('/admin/profile', [AdminController::class, 
    'AdminProfile'])->name('admin.profile');

    Route::post('/admin/profile/store', [AdminController::class, 
    'AdminProfileStore'])->name('admin.profile.store');

    Route::get('/admin/change/password', [AdminController::class, 
    'AdminChangePassword'])->name('admin.change.password');

    Route::post('/admin/update/password', [AdminController::class, 
    'AdminUpdatePassword'])->name('admin.update.password');

//Student Group Middleware
    
    Route::get('/student/dashboard', [studentController::class, 
    'StudentDashboard'])->name('student.dashboard');

    Route::get('/student/logout', [studentController::class, 
    'StudentLogout'])->name('student.logout');

    Route::get('/student/profile', [studentController::class, 
    'StudentProfile'])->name('student.profile');

    Route::get('/student/apply', [studentController::class, 
    'StudentApply'])->name('student.apply');
    
    Route::get('/student/applystatus', [studentController::class,     
    'StudentStatus'])->name('student.status');

    
    Route::get('/who-may-apply', [StudentController::class,
    'studentWhoMayApply'])->name('student.who_may_apply');

    Route::get('/additional-requirements', [StudentController::class,
    'studentAdditionalReq'])->name('student.additional_req');


    Route::post('/student/profile/store', [studentController::class, 
    'studentProfileStore'])->name('student.profile.store');

    Route::post('/upload/file', [studentController::class, 
    'uploadFile'])->name('upload.file');

    Route::get('/student/change/password', [studentController::class, 
    'StudentChangePassword'])->name('student.change.password');

    Route::post('/student/update/password', [studentController::class, 
    'StudentUpdatePassword'])->name('student.update.password');
   


//Agent Group Middleware

    Route::get('/agent/landingpage', [AgentController::class, 
    'AgentDashboard'])->name('agent.dashboard');

    Route::get('/agent/logout', [AgentController::class, 
    'AgentLogout'])->name('agent.logout');

    Route::get('/agent/index', [AgentController::class, 
    'AgentLstOfStdnts'])->name('agent.lstofstdnts');

    Route::get('/agent/pending', [AgentController::class, 
    'AgentPending'])->name('agent.pending');

    Route::get('/agent/completedreq', [AgentController::class, 
    'AgentCompletedReq'])->name('agent.completedreq');

    Route::get('/agent/candidatestudent', [AgentController::class, 
    'AgentCandidateStdnt'])->name('agent.candidatestdnt');

    Route::get('/agent/scholars', [AgentController::class, 
    'AgentScholars'])->name('agent.scholars');

    Route::post('agent/move-selected', [AgentController::class, 
    'moveSelectedRows'])->name('agent.move-selected');

    Route::post('/agent/viewfiles/{id}', [AgentController::class, 
    'AgentViewFiles'])->name('agent.viewfiles');

    Route::get('/get-user-details/{name}', [AgentController::class, 
    'getUserDetailsByPhone'])->name('get.user.details');



    Route::get('/opa/dashboard', [OpaController::class, 
    'OpaDashboard'])->name('opa.dashboard');

    Route::get('/opa/logout', [opaController::class, 
    'OpaLogout'])->name('opa.logout');




Route::get('/admin/login', [AdminController::class, 'AdminLogin'])->name('admin.login');

Route::get('/agent/login', [AgentController::class, 'AgentLogin'])->name('agent.login');

Route::get('/student/login', [studentController::class, 'StudentLogin'])->name('student.login');

Route::get('/opa/login', [opaController::class, 'OpaLogin'])->name('opa.login');




