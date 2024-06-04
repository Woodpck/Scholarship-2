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
                            <th scope="col" class="px-4 py-3">STATUS</th>
                            <th scope="col" class="px-4 py-3">DOCUMENTS</th>
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
                                <td class="px-2 py-2">
                                    <span class="inline-block px-3 py-1 rounded-full font-semibold text-sm
                                            @if($applicant->remarks === 'pending') bg-yellow-100 text-yellow-800
                                            @elseif($applicant->remarks === 'resubmission') bg-orange-200 text-orange-800
                                            @endif">
                                        {{ strtoupper($applicant->remarks) }}
                                    </span>
                                </td>
                                <td class="px-2 py-2">
                                    <button onclick="showStudentDialog()" class="bg-yellow-400 text-white py-1 px-7 sm:text-xs hover:bg-yellow-600 transition flex items-center mx-auto">
                                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0,0,256,256" style="fill:#000000;" class="pr-1">
                                            <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                                                <g transform="scale(10.66667,10.66667)">
                                                    <path d="M4,4c-1.09425,0 -2,0.90575 -2,2v12c0,1.09426 0.90575,2 2,2h16c1.09426,0 2,-0.90574 2,-2v-10c0,-1.09425 -0.90574,-2 -2,-2h-8l-2,-2zM4,6h5.17188l2,2h8.82813v10h-16z"></path>
                                                </g>
                                            </g>
                                        </svg>
                                        View Files
                                    </button>
                                    <!-- Student Dialog -->
                                    <div id="studentDialog" class="hidden fixed inset-0 bg-black bg-opacity-50 z-50">
                                        <div class="flex items-center justify-center h-screen ">
                                            <div class="bg-white shadow-md rounded-md p-8 relative">
                                                <span class="cursor-pointer absolute top-2 right-5 text-gray-500" onclick="closeStudentDialog()">x</span>

                                                <div class="grid grid-cols-2 gap-4">
                                                    <!-- Left Grid - Student Requirements -->
                                                    <div class="grid grid-cols-1 rounded-md shadow-md">
                                                        <p class="text-yellow-400 font-bold text-md mx-3 mt-3">Student Requirements:</p>
                                                        <!-- sample table -->
                                                        <table class="table-auto mx-5 mt-2 mb-5">
                                                            <tr>
                                                                <td class="pr-4 font-semibold">FORM 137/138</td>
                                                                <td></td>
                                                                <td>
                                                                    <target="_blank" button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">PARENT'S INCOME TAX RETURN</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">CERTIFICATE OF RESIDENCY</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">CERTIFICATE OF GOOD MORAL</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">SCHOLARSHIP LETTER</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">PLM ID</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="pr-4 font-semibold">APPLICATION FORM</td>
                                                                <td></td>
                                                                <td><button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button></td>
                                                            </tr>
                                                        </table>
                                                    </div>

                                                    <!-- Right Grid - Student Information -->
                                                    <div>
                                                        <div class="grid grid-cols-2 rounded-md shadow-md">
                                                            <p class="col-span-2 text-yellow-400 font-bold text-md">Student Information:</p>
                                                            <table class="col-span-2 table-auto">
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">Student Number</td>
                                                                    <td>{{ $applicant->student_no }}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">Name</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">Degree Program</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">GWA</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">Contact Number</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">PLM E-mail Account</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pr-4 font-semibold">Household Income</td>
                                                                    <td></td>
                                                                </tr>
                                                            </table>
                                                        </div>

                                                        <!-- Additional Grid for Approval Options -->
                                                        <div class="grid grid-cols-3 gap-4">
                                                            <p id="remarksTitle" class="col-span-3 text-yellow-400 font-bold text-md">Remarks:</p>
                                                            <div id="approvalOptions" class="col-span-3 grid grid-cols-3 gap-2">
                                                                <!-- Radio buttons for Approve, Resubmit, Disapprove -->
                                                                <div class="col-span-1">
                                                                    <input type="radio" id="approveOption" name="approvalOptions" value="approve" onclick="handleOptionChange(this)">
                                                                    <label>Approve</label>
                                                                </div>
                                                                <div class="col-span-1">
                                                                    <input type="radio" id="resubmitOption" name="approvalOptions" value="resubmit" onclick="handleOptionChange(this)">
                                                                    <label for="resubmitOption">Resubmit</label>
                                                                </div>
                                                                <div class="col-span-1">
                                                                    <input type="radio" id="disapproveOption" name="approvalOptions" value="disapprove" onclick="handleOptionChange(this)">
                                                                    <label for="disapproveOption">Disapprove</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-span-3 bg-white p-4 rounded-md">
                                                            <div id="defaultContent" class="content-section">
                                                                <p>This content has not been established by the buttons.</p>
                                                            </div>

                                                            <div id="approveContent" class="content-section" style="display: none;">
                                                                <!-- Content for the 'Approve' option -->
                                                                ----approve content here-----
                                                            </div>

                                                            <div id="resubmitContent" class="content-section" style="display: none;">
                                                                <!-- Content for the 'Resubmit' option -->
                                                                ----resubmit content here-----
                                                            </div>

                                                            <div id="disapproveContent" class="content-section" style="display: none;">
                                                                <!-- Content for the 'Disapprove' option -->
                                                                ----disapprove content here-----
                                                            </div>

                                                            <!-- Submit Button -->
                                                            <button id="submitButton" class="bg-gray-300 text-gray-500 py-1 px-3 rounded-md cursor-not-allowed" disabled>Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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




    <!-- script for viewing student info -->
    <script>
        // Function to show the student dialog
        function showStudentDialog() {
            document.getElementById('studentDialog').classList.remove('hidden');
        }

        // Function to close the student dialog
        function closeStudentDialog() {
            var studentDialog = document.getElementById('studentDialog');
            studentDialog.classList.add('hidden');

            // Deselect all radio buttons
            var options = document.querySelectorAll('#approvalOptions input[type="radio"]');
            options.forEach(option => {
                option.checked = false;
            });

            // Clear highlighting from all option divs
            var optionDivs = document.querySelectorAll('#approvalOptions div');
            optionDivs.forEach(optionDiv => {
                optionDiv.classList.remove('bg-yellow-100', 'hover:bg-yellow-100');
            });

            // Hide specific content for each option
            var approveContent = document.getElementById('approveContent');
            var resubmitContent = document.getElementById('resubmitContent');
            var disapproveContent = document.getElementById('disapproveContent');

            approveContent.style.display = 'none';
            resubmitContent.style.display = 'none';
            disapproveContent.style.display = 'none';

            // Display the default content
            var defaultContent = document.getElementById('defaultContent');
            defaultContent.style.display = 'block';

            // Disable the submit button
            var submitButton = document.getElementById('submitButton');
            submitButton.disabled = true;
        }
    </script>

    <!--script for the remarks radio buttons in Pending section - Viewing student info feature -->
    <script>
        function handleOptionChange(radioButton) {
            var contentContainer = document.getElementById('contentContainer');
            var approveContent = document.getElementById('approveContent');
            var resubmitContent = document.getElementById('resubmitContent');
            var disapproveContent = document.getElementById('disapproveContent');
            var defaultContent = document.getElementById('defaultContent');
            var submitButton = document.getElementById('submitButton');

            approveContent.style.display = 'none';
            resubmitContent.style.display = 'none';
            disapproveContent.style.display = 'none';
            defaultContent.style.display = 'none';

            var options = document.querySelectorAll('#approvalOptions div');
            options.forEach(optionDiv => {
                optionDiv.classList.remove('bg-yellow-100', 'hover:bg-yellow-100');
            });

            var optionDiv = radioButton.parentNode;
            optionDiv.classList.add('bg-yellow-100');

            var optionValue = radioButton.value;
            switch (optionValue) {
                case 'approve':
                    approveContent.style.display = 'block';
                    break;
                case 'resubmit':
                    resubmitContent.style.display = 'block';
                    break;
                case 'disapprove':
                    disapproveContent.style.display = 'block';
                    break;
                default:
                    defaultContent.style.display = 'block';
                    break;
            }

            // Enable submit button when an option is selected
            submitButton.disabled = false;
            submitButton.classList.remove('cursor-not-allowed');
        }
    </script>

</div>