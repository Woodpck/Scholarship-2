<?php

namespace App\Http\Controllers;

use App\Models\ScholarshipUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StudentController extends Controller
{
    protected $defaultUserId = 3;  // Hard-coded user ID for testing

    public function studentDashboard()
    {
        $id = $this->defaultUserId;
        $profileData = ScholarshipUser::find($id);

        if (!$profileData) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        return view('student.index', compact('profileData'));
    } // End Method

    public function studentLogout(Request $request)
    {
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/student/login');
    } // End Method

    public function studentLogin()
    {
        return view('student.student_login');
    } // End Method

    public function studentProfile()
    {
        $id = $this->defaultUserId;
        $profileData = ScholarshipUser::find($id);

        if (!$profileData) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        return view('student.student_profile_view', compact('profileData'));
    } // End Method

    public function studentApply()
    {
        return view('student.student_apply');
    } // End Method

    public function studentWhoMayApply()
    {
        return view('student.who_may_apply');
    } // End Method

    public function studentAdditionalReq()
    {
        return view('student.additional_req');
    } // End Method

    public function studentProfileStore(Request $request)
    {
        $id = $this->defaultUserId;
        $data = ScholarshipUser::find($id);

        if (!$data) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        $data->username = $request->username;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->address = $request->address;

        if ($request->file('photo')) {
            $file = $request->file('photo');
            @unlink(public_path('upload/student_images/' . $data->photo));
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/student_images'), $filename);
            $data->photo = $filename;
        }
        $data->save();

        $notification = [
            'message' => 'Profile Updated Successfully',
            'alert-type' => 'success'
        ];

        return redirect()->back()->with($notification);
    } // End Method

    public function uploadFile(Request $request)
    {
        $id = $this->defaultUserId;
        $data = ScholarshipUser::find($id);

        if (!$data) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        $fields = ['grade_file', 'gmc_cert', 'tax', 'reason_letter', 'id_reg_form', 'form_with_pic', 'single_parent_id', 'brg_cert'];

        foreach ($fields as $field) {
            if ($request->hasFile($field)) {
                $file = $request->file($field);
                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('upload/student_File_Uploads'), $filename);
                $data->{$field} = $filename;
            }
        }

        $data->save();

        $notification = [
            'message' => 'Files Uploaded Successfully',
            'alert-type' => 'success'
        ];

        return redirect()->back()->with($notification);
    } // End Method

    public function studentStatus()
    {
        $id = $this->defaultUserId;
        $profileData = ScholarshipUser::find($id);

        if (!$profileData) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        return view('student.status', compact('profileData'));
    } // End Method

    public function studentChangePassword()
    {
        $id = $this->defaultUserId;
        $profileData = ScholarshipUser::find($id);

        if (!$profileData) {
            return redirect()->back()->withErrors(['error' => 'User not found']);
        }

        return view('student.student_change_password', compact('profileData'));
    } // End Method

    public function studentUpdatePassword(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|confirmed'
        ]);

        $id = $this->defaultUserId;
        $user = ScholarshipUser::find($id);

        if (!$user) {
            return back()->withErrors(['error' => 'User not found']);
        }

        if (!Hash::check($request->old_password, $user->password)) {
            $notification = [
                'message' => 'Old Password Does not Match!',
                'alert-type' => 'error'
            ];

            return back()->with($notification);
        }

        $user->update(['password' => Hash::make($request->new_password)]);

        $notification = [
            'message' => 'Password Changed Successfully!',
            'alert-type' => 'success'
        ];

        return back()->with($notification);
    } // End Method
}
