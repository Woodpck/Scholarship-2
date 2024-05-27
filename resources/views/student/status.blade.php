@extends('student.student_dashboard')
@section('student')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <!-- Content -->
        <div class="col  max-h-screen mx-auto my-auto">
    <div class=" w-3/4 rounded-md  bg-white text-blue-800  font-semibold h-20 mx-auto mt-2 flex items-center justify-center text-5xl">
        <h1>APPLICATION STATUS</h1>
    </div>

    <div class="page-content  w-3/4  mx-auto  ">

            
            <div class="row profile-body ">
                <!-- left wrapper start -->
                <div class=" col-xl-4 p-2 rounded-md">
                    <div class=" bg-white rounded-lg">
                        
                        <div class="card-body text-black p-4">
                            <h1 class="text-black">BASIC INFO</h1>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Student No.:</</label>
                            <p class="text-muted">{{ $profileData-> student_no }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Last Name</label>
                            <p class="text-muted">{{ $profileData->last_name }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">First Name:</label>
                            <p class="text-muted">{{ $profileData->first_name }}
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Middle name:</label>
                            <p class="text-muted">{{ $profileData->middle_name }}
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Gender:</label>
                            <p class="text-muted">{{ $profileData->biological_sex }}
                            </div>
                            
                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Age:</</label>
                            <p class="text-muted">{{ $profileData->age }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">College:</label>
                            <p class="text-muted">{{ $profileData->college }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Course:</label>
                            <p class="text-muted">{{ $profileData->degree_program_id }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Year Level:</label>
                            <p class="text-muted">{{ $profileData->academic_year }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">PLM Email:</label>
                            <p class="text-muted">{{ $profileData->plm_email }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Contact No.:</label>
                            <p class="text-muted">{{ $profileData->mobile_no }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Current GWA:</label>
                            <p class="text-muted">{{ $profileData->grades }}</p>
                            </div>

                            <div class="mt-3">
                            <label class="tx-11 fw-bolder mb-0 text-uppercase text-black">Household Income:</label>
                            <p class="text-muted">{{ $profileData->annual_family_income }}</p>
                            </div>
                            
                        </div>

                    </div>

                </div>
                <!-- left wrapper end -->

                <!-- middle wrapper start -->
                <div class=" col-xl-8  p-2  rounded-lg">          
                    <div class=" bg-white rounded-lg">

                        <div class="card-body text-black p-4">

        <form action="{{ route('upload.file') }}" method="post" enctype="multipart/form-data">
            @csrf
<!-- WALA PANG DESIGN PRE -->
            <div class="grid grid-cols-2 gap-4">
                <div class="border-solid border-2  border-yellow-500 bg-yellow-200">
                    <label for="file1" class="block text-gray-700"> This is for download form</label>
                    <input type="file" id="file1" name="files[]" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border-2  border-yellow-500 bg-yellow-200">
                    <label for="file2" class="block text-gray-700">SCHOLARSHIP FORM WITH 2X2 PICTURE</label>
                    <input type="text" id="file2" value="{{ $profileData->form_with_pic }}" name="" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                    
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file3" class="block text-gray-700">PLM DOWNLOADED GRADES FOR OLD STUDENTS OR FORM 137/138 FOR FIRST FIRST STUDENTS </label>
                    <input type="text" id="file3" value="{{ $profileData->grade_file }}" name="grades" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file4" class="block text-gray-700">CCERTIFICATE OF GOOD MORAL CHARACTER FOR STUDENTS & SHS FOR FIRST YEAR LEVELS</label>
                    <input type="text" id="file4" value="{{ $profileData->gmc_cert }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file3" class="block text-gray-700">PARENTS INCOME TAX RETURN, CERT FOR FILLING OF INCOME TAX FROM BIR</label>
                    <input type="text" id="file3" value="{{ $profileData->tax }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file4" class="block text-gray-700">OPEN LETTER STATING THE REASON WHY STUDENT NEED TO AVAIL A SCHOLARSHIP PROGRAM</label>
                    <input type="text" id="file4" value="{{ $profileData->reason_letter }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>
                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file4" class="block text-gray-700">PLM ID PHOTOCOPY,ENROLLMENT REGISTRATION FORM</label>
                    <input type="text" id="file4" value="{{ $profileData->id_reg_form }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file3" class="block text-gray-700">BARANGAY CERTIFICATE OF RESIDENCY FOR STUDENT</label>
                    <input type="text" id="file3" value="{{ $profileData->brg_cert }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>

                <div class="border-solid border   bg-blue-50 rounded-lg p-1">
                    <label for="file4" class="block text-gray-700">PHOTOCOPY OF SINGLE PARENT ID OR COPY OF DEATH CERTIFICATE</label>
                    <input type="text" id="file4" value="{{ $profileData->single_parent_id }}" name="files" multiple class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                </div>
            <div class="grid grid-cols-1 gap-4">
                <a href="{{ route('student.apply') }}" class="flex items-center justify-center bg-blue-500 hover:bg-blue-700 text-white text-2xl font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline mt-4 w-full">Back</a>
                <!-- <button type="" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline mt-4 w-full">Upload</button> -->

            </div>

            </div>

        </form>
                            

                        </div>

                    </div> 
                </div>
                <!-- middle wrapper end -->
               
        
            </div>

    </div>
</div>

        <script>
            // function not working hays
    function onSubmit() {
        // Display a JavaScript alert
        alert('File uploaded successfully');

        // Return true to submit the form
        return true;
    }
</script>

<!-- not working din potek yan -->
<script type="text/javascript">
    $(document).ready(function(){
        $('#image').change(function(e){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#showImage').attr('src',e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });

</script>
 
@endsection