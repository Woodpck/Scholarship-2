<div>
    <!-- Student Dialog -->
    <div id="studentDialog" class="hidden fixed inset-0 bg-black bg-opacity-50 z-50">
        <div class="flex items-center justify-center h-screen">
            <div class="bg-white shadow-md rounded-md p-8 relative">
                <span class="cursor-pointer absolute top-2 right-5 text-gray-500" wire:click="$set('applicant', null)">x</span>

                @if($applicant)

                <div class="grid grid-cols-2 gap-4">
                    <!-- Left Grid - Student Requirements -->
                    <div class="grid grid-cols-1 rounded-md shadow-md">
                        <p class="text-yellow-400 font-bold text-md mx-3 mt-3">Student Requirements:</p>
                        <!-- sample table -->
                        <table class="table-auto mx-5 mt-2 mb-5">
                            <tr>
                                <td class="pr-4 font-semibold">FORM 137/138</td>
                                <td>{{ $applicant->student_no }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->grade_file) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">PARENT'S INCOME TAX RETURN</td>
                                <td>{{ $applicant->tax }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->tax) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">CERTIFICATE OF RESIDENCY</td>
                                <td>{{ $applicant->brg_cert }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->brg_cert) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">CERTIFICATE OF GOOD MORAL</td>
                                <td>{{ $applicant->gmc_cert }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->gmc_cert) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">SCHOLARSHIP LETTER</td>
                                <td>{{ $applicant->reason_letter }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->reason_letter) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">PLM ID</td>
                                <td>{{ $applicant->id_reg_form }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->id_reg_form) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="pr-4 font-semibold">APPLICATION FORM</td>
                                <td>{{ $applicant->form_with_pic }}</td>
                                <td>
                                    <a href="{{ asset('storage/' . $applicant->form_with_pic) }}" target="_blank">
                                        <button class="bg-gray-200 text-gray-700 px-2 py-1 rounded-md">View</button>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
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
                            <td>{{ $applicant->last_name }}, {{ $applicant->first_name }} {{ $applicant->middle_name }}</td>
                        </tr>
                        <tr>
                            <td class="pr-4 font-semibold">Degree Program</td>
                            <td>{{ $applicant->course }}</td>
                        </tr>
                        <tr>
                            <td class="pr-4 font-semibold">GWA</td>
                            <td>{{ $applicant->current_gwa }}</td>
                        </tr>
                        <tr>
                            <td class="pr-4 font-semibold">Contact Number</td>
                            <td>{{ $applicant->phone }}</td>
                        </tr>
                        <tr>
                            <td class="pr-4 font-semibold">PLM E-mail Account</td>
                            <td>{{ $applicant->student_plm_email }}</td>
                        </tr>
                        <tr>
                            <td class="pr-4 font-semibold">Household Income</td>
                            <td>{{ $applicant->household_income }}</td>
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
                        <textarea class="border-none w-full p-2 pb-5 sm:text-xs resize-none h-full bg-gray-200 rounded-lg" placeholder="Enter description here..."></textarea>
                    </div>

                    <div id="approveContent" class="content-section" style="display: none;">
                        <textarea class="border-none w-full p-2 pb-5 sm:text-xs resize-none h-full bg-gray-200 rounded-lg" placeholder="Enter description here..."></textarea>
                    </div>

                    <div id="resubmitContent" class="content-section" style="display: none;">
                        <textarea class="border-none w-full p-2 pb-5 sm:text-xs resize-none h-full bg-gray-200 rounded-lg" placeholder="The documents you submit have been verified and approved by the OSDS secretary. Please wait and check your plm email for further instructions."></textarea>
                    </div>

                    <div id="disapproveContent" class="content-section" style="display: none;">
                        <textarea class="border-none w-full p-2 pb-5 sm:text-xs resize-none h-full bg-gray-200 rounded-lg" placeholder="Enter description here..."></textarea>
                    </div>

                </div>
                <div class="flex justify-end items-end">
                    <!-- Submit Button -->
                    <button wire:click="updateApplicantStatus" id="submitButton" class="items-end bg-gray-300 text-gray-500 py-1 px-3 rounded-md cursor-not-allowed" disabled>Submit</button>
                </div>
            </div>
        </div>
        @else
        <p class="text-red-500">Applicant not found or details could not be loaded.</p>
        @endif
    </div>
</div>

<script>
    // Show the modal when Livewire event is emitted
    document.addEventListener('DOMContentLoaded', function() {
        Livewire.on('showApplicantDetails', () => {
            document.getElementById('studentDialog').classList.remove('hidden');
        });
    });
</script>