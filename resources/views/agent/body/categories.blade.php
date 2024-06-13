<div class="p-5 grid grid-cols-5 gap-1 justify-center">
    <a href="{{ route('agent.dashboard') }}" button id="btnListofStuds" class="col-span-1 bg-gray-300 p-2 rounded-md shadow-md text-black text-center font-bold">Students List</a>
    <a href="{{ route('agent.pending') }}" button id="btnPending" class="col-span-1 bg-gray-300 p-2 rounded-md shadow-md text-black text-center font-bold">Pending</a>
    <a href="{{ route('agent.completedreq') }}" button id="btnCompletedReqs" class="col-span-1 bg-gray-300 p-2 rounded-md shadow-md text-black text-center font-bold">Completed Requirements</a>
    <a href="{{ route('agent.candidatestdnt') }}" button id="btnCandidateStuds" class="col-span-1 bg-gray-300 p-2 rounded-md shadow-md text-black text-center font-bold">Candidate Students</a>
    <a href="{{ route('agent.scholars') }}" button id="btnScholar" class="col-span-1 bg-gray-300 p-2 rounded-md shadow-md text-black text-center font-bold">Scholars</a>
</div>
