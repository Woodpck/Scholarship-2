<?php

namespace App\Livewire;

use App\Models\QualifiedApplicant; // Make sure to import the QualifiedApplicant model
use Livewire\Component;
use Livewire\WithPagination;

class CandidateStudentstable extends Component
{
    use WithPagination;

    public $search = '';

    public function render()
    {
        $qualifiedApplicants = QualifiedApplicant::select('qualified_applicants.*')
        ->join('listofapplicants', 'qualified_applicants.applicant_id', '=', 'listofapplicants.id')
        ->where('listofapplicants.last_name', 'like', '%' . $this->search . '%')
            ->paginate(5);

        return view('livewire.candidatestudentstable', compact('qualifiedApplicants'));
    }
}
