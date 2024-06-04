<div>
    <section>
        <div class="mx-auto max-w-screen-xl px-4 lg:px-12">
            <!-- Start coding here -->
            <div class="bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden">
                <div class="flex items-center justify-between d p-3">
                    <div class="flex">
                        <div class="relative w-full">
                            <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewbox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd" />
                                </svg>
                            </div>
                            <input input wire:model.live.debounce.300ms="search" type="text" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2 " placeholder="Search name" required="">
                        </div>
                    </div>
                    <div class="flex space-x-3">
                        <div class="flex space-x-3 items-center">
                            <label class="w-40 text-sm font-medium text-gray-900">Filter status :</label>
                            <select wire:model.live="status" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 ">
                                <option value="">All</option>
                                <option value="pending">Pending</option>
                                <option value="resubmission">Resubmission</option>
                                <option value="Approved">Approved</option>
                                <option value="Scholar">Scholar</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="overflow-x-auto">
                    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                            <tr></tr>
                            <th scope="col" class="px-4 py-3">#</th>
                            <th scope="col" class="px-4 py-3">STUDENT NAME</th>
                            <th scope="col" class="px-4 py-3">STUDENT NUMBER</th>
                            <th scope="col" class="px-4 py-3">YEAR</th>
                            <th scope="col" class="px-4 py-3">COURSE</th>
                            <th scope="col" class="px-4 py-3">PHONE NUMBER</th>
                            <th scope="col" class="px-4 py-3">G.W.A.</th>
                            <th scope="col" class="px-4 py-3">PARENT'S INCOME</th>
                            <th scope="col" class="px-4 py-3">STATUS</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($applicants as $applicant)
                            <tr wire:key="{{ $applicant->id }}" class="border-b dark:border-gray-700">
                                <td class="px-2 py-2">{{ $applicant->id }}</td>
                                <th scope="row" class="px-2 py-2 font-medium text-gray-900 whitespace-nowrap">
                                    {{ $applicant->last_name }}, {{ $applicant->first_name }} {{ $applicant->middle_name }}
                                </th>
                                <td class="px-2 py-2">{{ $applicant->student_no }}</td>
                                <td class="px-2 py-2">{{ $applicant->year_level }}</td>
                                <td class="px-2 py-2">{{ $applicant->course }}</td>
                                <td class="px-2 py-2">{{ $applicant->phone }}</td>
                                <td class="px-2 py-2">{{ $applicant->current_gwa }}</td>
                                <td class="px-2 py-2"> ₱ {{ $applicant->household_income }}</td>
                                <td class="px-2 py-2">
                                    <span class="inline-block px-3 py-1 rounded-full font-semibold text-sm
                                            @if($applicant->remarks === 'pending') bg-yellow-100 text-yellow-800
                                            @elseif($applicant->remarks === 'resubmission') bg-orange-200 text-orange-800
                                            @elseif($applicant->remarks === 'approved') bg-green-100 text-green-800
                                            @elseif($applicant->remarks === 'scholar') bg-green-300 text-green-800
                                            @endif">
                                        {{ strtoupper($applicant->remarks) }}
                                    </span>
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
        </div>
    </section>
    

</div>