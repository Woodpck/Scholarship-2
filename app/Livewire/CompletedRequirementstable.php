<?php

namespace App\Livewire;

use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class CompletedRequirementstable extends Component
{
    use WithPagination;

    public $searchName = '';
    public $searchCourse = '';

    public function updatingSearchName()
    {
        $this->resetPage();
    }

    public function updatingSearchCourse()
    {
        $this->resetPage();
    }

    public function render()
    {
        $applicants = Applicant::query()
            ->where('remarks', 'approved')
            ->when($this->searchName, function ($query) {
                $query->where(function ($q) {
                    $q->where('first_name', 'like', '%'.$this->searchName.'%')
                      ->orWhere('last_name', 'like', '%'.$this->searchName.'%')
                      ->orWhereRaw("CONCAT(first_name, ' ', last_name) LIKE ?", ['%'.$this->searchName.'%']);
                });
            })
            ->when($this->searchCourse, function ($query) {
                $query->where('course', 'like', '%'.$this->searchCourse.'%');
            })
            ->paginate(5);

        return view('livewire.completed-requirementstable', compact('applicants'));
    }
}
