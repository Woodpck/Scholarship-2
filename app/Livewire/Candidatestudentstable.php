<?php

namespace App\Livewire;

use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class CandidateStudentstable extends Component
{
    use WithPagination;

    public $search = '';

    public function render()
    {
        return view('livewire.candidatestudentstable',
        [
            'applicants' => applicant::search($this->search)
            ->whereIn('remarks', ['approved'])
            ->paginate(5)
        ]
    );
    }
}
