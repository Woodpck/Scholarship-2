<?php

namespace App\Livewire;

use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class Scholarstable extends Component
{
    use WithPagination;

    public $search = '';

    public function render()
    {
        
        return view('livewire.scholarstable',
        [
            'applicants' => applicant::search($this->search)
            ->whereIn('remarks', ['scholar'])
            ->paginate(5)
        ]
    );
    }
}
