<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Applicant; // Adjust this to match your Applicant model namespace

class ApplicantDetails extends Component
{
    public $applicant = null; // Initialize applicant to null or empty

    protected $listeners = ['showApplicantDetails'];

    public function showApplicantDetails($id)
    {
        $this->applicant = applicant::find($id); // Adjust based on your model name

        if (!$this->applicant) {
            // Handle case where applicant is not found, perhaps redirect or show an error
            abort(404, 'Applicant not found');
        }

        // Emit an event to notify that applicant details are shown
        $this->emit('applicantDetailsShown', $this->applicant);
    }

    public function updateApplicantStatus()
    {
        if ($this->selectedOption === 'approve') {
            $this->applicant->remarks = 'approved';
            $this->applicant->save();
        } elseif ($this->selectedOption === 'resubmit') {
            if ($this->applicant->remarks === 'pending') {
                $this->applicant->remarks = 'resubmission';
                $this->applicant->save();
            }
        } elseif ($this->selectedOption === 'disapprove') {
            $this->applicant->delete();
        }

        // Close the modal and refresh the page or component
        $this->dispatchBrowserEvent('closeStudentDialog');
        $this->emit('refreshApplicantsList');
    }

    public function render()
    {
        return view('livewire.applicant-details');
    }
}

