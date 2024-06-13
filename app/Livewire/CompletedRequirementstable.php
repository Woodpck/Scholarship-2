<?php

namespace App\Livewire;

use App\Models\Applicant;
use App\Models\QualifiedApplicant;
use Livewire\Component;
use Livewire\WithPagination;

class CompletedRequirementstable extends Component
{
    use WithPagination;

    public $searchName = '';
    public $searchCourse = '';
    public $selectedRows = [];

    public function updatingSearchName()
    {
        $this->resetPage();
    }

    public function updatingSearchCourse()
    {
        $this->resetPage();
    }

    public function toggleSelected($applicantId)
    {
        if (in_array($applicantId, $this->selectedRows)) {
            $this->selectedRows = array_diff($this->selectedRows, [$applicantId]);
        } else {
            $this->selectedRows[] = $applicantId;
        }
    }

    public function moveSelectedApplicants()
    {
        foreach ($this->selectedRows as $applicantId) {
            QualifiedApplicant::create([
                'applicant_id' => $applicantId,
            ]);
        }

        // Clear selectedRows array after moving
        $this->selectedRows = [];

        // Optionally, you can add a success message or perform any other actions here
        session()->flash('message', 'Selected applicants moved to Qualified Applicants.');
    }

    public function render()
    {   
        $selectedIds = implode(',', $this->selectedRows);

        $applicants = Applicant::query()
            ->where('remarks', 'approved')
            ->when($this->searchName, function ($query) {
                $query->where(function ($q) {
                    $q->where('last_name', 'like', $this->searchName . '%');
                });
            })
            ->when($this->searchCourse, function ($query) {
                $query->where('course', 'like', $this->searchCourse . '%');
            });

        if (!empty($this->selectedRows)) {
            $applicants = $applicants->orderByRaw("FIELD(id, $selectedIds) DESC");
        }
        
        $applicants = $applicants->paginate(5);

        return view('livewire.completed-requirementstable', compact('applicants'));
    }
}
