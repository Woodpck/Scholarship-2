<?php

namespace App\Livewire;

use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class Listofapplicantstable extends Component
{
    use WithPagination;

    public $search = '';
    public $status = '';

    public function render()
    {
        return view('livewire.listofapplicantstable',
        [
            'applicants' => applicant::search($this->search)
            ->when($this->status !== '',function($query){
                $query->where('remarks',$this->status);
            })
            ->paginate(5)
        ]
    );
    }
}
