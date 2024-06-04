<?php

namespace App\Livewire;

use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class Pendingtable extends Component
{
    use WithPagination;

    public $search = '';
    public $status = '';

    public function render()
    {
        return view('livewire.pendingtable',
        [
            'applicants' => applicant::search($this->search)
            ->whereIn('remarks', ['resubmission', 'pending'])
            ->when($this->status !== '',function($query){
                $query->where('remarks',$this->status);
            })
            ->paginate(5)
        ]
    );
    }
}
