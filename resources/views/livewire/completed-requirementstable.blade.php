<div>
    <section>
        <div class="mx-auto max-w-screen-xl px-4 lg:px-12">
            <!-- Start coding here -->
            <div class="grid grid-cols-7 gap-2">
                <!-- Dropdown - First Name -->
                <div class="col-span-1">
                    <div class="flex">
                        <div class="relative w-full">
                            <input wire:model.live.debounce.300ms="searchName" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2" placeholder="Name" required="">
                        </div>
                    </div>
                </div>
                <!-- Dropdown - Course Program -->
                <div class="col-span-1 px-2">
                    <div class="flex">
                        <div class="relative w-full">
                            <input wire:model.live.debounce.300ms="searchCourse" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2" placeholder="Course" required="">
                        </div>
                    </div>
                </div>
                <!-- Scholarship Provider -->
                <div class="col-span-1">
                    <div class="flex">
                        <div class="relative w-full">
                            <input wire:model.live.debounce.300ms="search" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2" placeholder="Scholarship Provider" required="">
                        </div>
                    </div>
                </div>
                <!-- Slot Opening Date -->
                <div class="relative col-span-1">
                    <div class="flex">
                        <div class="relative w-full">
                            <input wire:model.live.debounce.300ms="search" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-xs focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2" placeholder="Slot Opening Date" required="">
                            <button class="absolute top-0 right-0 m-2 bg-white p-1">
                                <img width="20" height="20" style="margin-top: -5px;" src="https://img.icons8.com/ios/50/calendar--v1.png" alt="calendar--v1" />
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Show -->
                <div class="col-span-1">
                    <label class="mr-2 sm:text-xs">Show</label>
                    <input type="text" class="border p-2 sm:text-xs w-12">
                </div>
                <!-- Move -->
                <div class="col-span-1 pl-20">
                    <button wire:click="moveSelectedApplicants" class="bg-gray-400 text-gray-700 py-2 px-8 rounded-md hover:bg-yellow-100 hover:text-yellow-400 transition sm:text-xs">MOVE</button>
                </div>
                <div class="relative col-span-1 pl-6">
                    <button class="absolute top-0 bg-white">
                        <img width="18" height="18" src="https://img.icons8.com/fluency-systems-regular/48/help--v1.png" alt="help--v1" />
                    </button>
                </div>
            </div>
            <div class="overflow-x-auto pt-2">
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                        <tr>
                            <th scope="col" class="px-4 py-3">#</th>
                            <th scope="col" class="px-4 py-3">STUDENT NAME</th>
                            <th scope="col" class="px-4 py-3">YEAR</th>
                            <th scope="col" class="px-4 py-3">COURSE</th>
                            <th scope="col" class="px-4 py-3">PHONE NUMBER</th>
                            <th scope="col" class="px-4 py-3">G.W.A.</th>
                            <th scope="col" class="px-4 py-3">EQUIVALENT</th>
                            <th scope="col" class="px-4 py-3">PARENT'S INCOME</th>
                            <th scope="col" class="px-4 py-3">EQUIVALENT</th>
                            <th scope="col" class="px-4 py-3">RANK</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($applicants as $applicant)
                        <tr wire:key="{{ $applicant->id }}"
                            class="border-b dark:border-gray-700 {{ in_array($applicant->id, $selectedRows) ? 'bg-blue-100' : '' }}"
                            wire:click="toggleSelected({{ $applicant->id }})">
                            <td class="px-2 py-2">{{ $applicant->id }}</td>
                            <th scope="row" class="px-2 py-2 font-medium text-gray-900 whitespace-nowrap">
                                {{ $applicant->last_name }}, {{ $applicant->first_name }} {{ $applicant->middle_name }}
                            </th>
                            <td class="px-2 py-2">{{ $applicant->year_level }}</td>
                            <td class="px-2 py-2">{{ $applicant->course }}</td>
                            <td class="px-2 py-2">{{ $applicant->phone }}</td>
                            <td class="px-2 py-2">{{ $applicant->current_gwa }}</td>
                            <td class="px-2 py-2"></td>
                            <td class="px-2 py-2">₱ {{ $applicant->household_income }}</td>
                            <td class="px-2 py-2"></td>
                            <td class="px-2 py-2"></td>
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
</div>
