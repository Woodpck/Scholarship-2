<div>
    <section>
        <div class="mx-auto max-w-screen-xl px-4 lg:px-12">
            <div class="flex items-center justify-between d p-3">
                <div>
                    <div class="flex">
                        <div class="relative w-full">
                            <input wire:model.live.debounce.300ms="search" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs rounded-md focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2" placeholder="Search name" required="">
                        </div>
                    </div>
                </div>
                <div class="flex space-x-3">
                    <div class="flex space-x-3 items-center">
                        <label class="w-40 text-sm text-gray-900">Filter status :</label>
                        <select wire:model.live="status" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs rounded-md focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2">
                            <option value="">All</option>
                            <option value="pending">Pending</option>
                            <option value="resubmission">Resubmission</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="overflow-x-auto">
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                        <tr></tr>
                        <th scope="col" class="px-4 py-3">STUDENT NAME</th>
                        <th scope="col" class="px-4 py-3">STUDENT NUMBER</th>
                        <th scope="col" class="px-4 py-3">STATUS</th>
                        <th scope="col" class="px-4 py-3">DOCUMENTS</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($applicants as $applicant)
                        <tr wire:key="{{ $applicant->id }}" class="border-b dark:border-gray-700">
                            <th scope="row" class="px-2 py-2 font-medium text-gray-900 whitespace-nowrap">
                                {{ $applicant->last_name }}, {{ $applicant->first_name }} {{ $applicant->middle_name }}
                            </th>
                            <td class="px-2 py-2">{{ $applicant->student_no }}</td>
                            <td class="px-2 py-2">
                                <span class="inline-block px-3 py-1 rounded-full font-semibold text-sm
                                            @if($applicant->remarks === 'pending') bg-yellow-100 text-yellow-800
                                            @elseif($applicant->remarks === 'resubmission') bg-orange-200 text-orange-800
                                            @endif">
                                    {{ strtoupper($applicant->remarks) }}
                                </span>
                            </td>
                            <td class="px-2 py-2">
                                <button wire:click="showApplicantDetails({{ $applicant->id }})" class="bg-yellow-400 text-white py-1 px-7 sm:text-xs hover:bg-yellow-600 transition flex items-center mx-auto">
                                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0,0,256,256" style="fill:#000000;" class="pr-1">
                                        <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                                            <g transform="scale(10.66667,10.66667)">
                                                <path d="M4,4c-1.09425,0 -2,0.90575 -2,2v12c0,1.09426 0.90575,2 2,2h16c1.09426,0 2,-0.90574 2,-2v-10c0,-1.09425 -0.90574,-2 -2,-2h-8l-2,-2zM4,6h5.17188l2,2h8.82813v10h-16z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                    View Files
                                </button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                </div>
            <div class="py-4 px-3">
                {{ $applicants->links() }}
            </div>
        </div>
    </section>
    <!-- Livewire Component for Applicant Details Modal -->
    <livewire:applicant-details wire:key="applicant-details-{{ $applicant->id }}" :applicant="$applicant" :key="$applicant->id" @applicantDetailsShown="handleApplicantDetailsShown($event)" />
</div>

<script>
    function closeStudentDialog() {
        var studentDialog = document.getElementById('studentDialog');
        studentDialog.classList.add('hidden');
    }

    document.addEventListener('closeStudentDialog', function() {
        closeStudentDialog();
    });
</script>