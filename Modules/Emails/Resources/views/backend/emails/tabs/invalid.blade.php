<div class="row mt-4">
    <div class="col">
        <table id="invalid-datatable" class="table table-bordered table-hover table-responsive-sm" style="width:100%">
            <thead>
                <tr>
                    <th>
                        #
                    </th>
                    <th>
                        Name
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        Phone
                    </th>
                    <th>
                        Address
                    </th>
                    <th>
                        Country
                    </th>
                    <th>State</th>
                    <th>Pincode</th>
                    <th>Category/Tags</th>
                    <th>
                        Updated At
                    </th>
                    <th class="text-end">
                        Response
                    </th>
                </tr>
            </thead>
        </table>
    </div>
</div>

@push ('after-styles')
<!-- DataTables Core and Extensions -->
<link rel="stylesheet" href="{{ asset('vendor/datatable/datatables.min.css') }}">

@endpush

@push ('after-scripts')
<!-- DataTables Core and Extensions -->
<script type="text/javascript" src="{{ asset('vendor/datatable/datatables.min.js') }}"></script>

<script type="text/javascript">
    $('#invalid-datatable').DataTable({
        "lengthMenu": [1000, 2000, 5000, 8000, 10000],
        processing: true,
        serverSide: true,
        autoWidth: true,
        responsive: true,
        ajax: '{{ route("backend.emails.emailsData",["id"=>$$module_name_singular->id,"model"=>"\InvalidData"]) }}',
        columns: [{
                data: 'id',
                name: 'id'
            },
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'email',
                name: 'email'
            },
            {
                data: 'phone',
                name: 'phone'
            },
            {
                data: 'address',
                name: 'address'
            },
            {
                data: 'country',
                name: 'country'
            },
            {
                data: 'state',
                name: 'state'
            },
            {
                data: 'pincode',
                name: 'pincode'
            },
            {
                data: 'category',
                name: 'category'
            },
            {
                data: 'updated_at',
                name: 'updated_at'
            },
            {
                data: 'action',
                name: 'action',
                orderable: false,
                searchable: false
            }
        ]
    });
</script>
@endpush
