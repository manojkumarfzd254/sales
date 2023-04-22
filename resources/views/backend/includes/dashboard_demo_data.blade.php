<?php

//dd($table_name);
?>
<div class="row">
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body">
                <div class="fs-4 fw-semibold">{{ $WidgetA }}</div>
                <div>{{ label_case($tablea_name) }}</div>
                <div class="progress progress-thin my-2">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                {{-- <small class="text-medium-emphasis">WidgetA helper text</small> --}}
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body">
                <div class="fs-4 fw-semibold">{{ $WidgetB }}</div>
                <div>{{ label_case($tableb_name)}}</div>
                <div class="progress progress-thin my-2">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                {{-- <small class="text-medium-emphasis">Widget helper text</small> --}}
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body">
                <div class="fs-4 fw-semibold">{{ $WidgetC }}</div>
                <div>{{label_case($tablec_name)}}</div>
                <div class="progress progress-thin my-2">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                {{-- <small class="text-medium-emphasis">Widget helper text</small> --}}
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body">
                <div class="fs-4 fw-semibold">{{ $WidgetD }}</div>
                <div>{{label_case($tabled_name)}}</div>
                <div class="progress progress-thin my-2">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                {{-- <small class="text-medium-emphasis">Widget helper text</small> --}}
            </div>
        </div>
    </div>
    <!-- /.col-->
</div>
<!-- /.row-->



{{-- <div class="row">
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4 text-white bg-primary">
            <div class="card-body">
                <div class="fs-4 fw-semibold">89.9%</div>
                <div>Widget title</div>
                <div class="progress progress-white progress-thin my-2">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div><small class="text-medium-emphasis-inverse">Widget helper text</small>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4 text-white bg-warning">
            <div class="card-body">
                <div class="fs-4 fw-semibold">12.124</div>
                <div>Widget title</div>
                <div class="progress progress-white progress-thin my-2">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div><small class="text-medium-emphasis-inverse">Widget helper text</small>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4 text-white bg-danger">
            <div class="card-body">
                <div class="fs-4 fw-semibold">$98.111,00</div>
                <div>Widget title</div>
                <div class="progress progress-white progress-thin my-2">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div><small class="text-medium-emphasis-inverse">Widget helper text</small>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-sm-6 col-lg-3">
        <div class="card mb-4 text-white bg-info">
            <div class="card-body">
                <div class="fs-4 fw-semibold">2 TB</div>
                <div>Widget title</div>
                <div class="progress progress-white progress-thin my-2">
                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div><small class="text-medium-emphasis-inverse">Widget helper text</small>
            </div>
        </div>
    </div>
    <!-- /.col-->
</div>
<!-- /.row--> --}}


{{-- <div class="row">
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-primary text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-settings"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-primary">$1.999,50</div>
                    <div class="text-medium-emphasis text-uppercase fw-semibold small">Widget title</div>
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-info text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-laptop"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-info">$1.999,50</div>
                    <div class="text-medium-emphasis text-uppercase fw-semibold small">Widget title</div>
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-warning text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-moon"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-warning">$1.999,50</div>
                    <div class="text-medium-emphasis text-uppercase fw-semibold small">Widget title</div>
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
    <div class="col-6 col-lg-3">
        <div class="card mb-4">
            <div class="card-body p-3 d-flex align-items-center">
                <div class="bg-danger text-white p-3 me-3">
                    <svg class="icon icon-xl">
                        <use xlink:href="/fonts/free.svg#cil-bell"></use>
                    </svg>
                </div>
                <div>
                    <div class="fs-6 fw-semibold text-danger">$1.999,50</div>
                    <div class="text-medium-emphasis text-uppercase fw-semibold small">Widget title</div>
                </div>
            </div>
            <div class="card-footer px-3 py-2">
                <a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
                    <svg class="icon">
                        <use xlink:href="/fonts/free.svg#cil-chevron-right"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!-- /.col-->
</div> --}}
<!-- /.row-->

{{-- pie chart start from hear --}}
<div class="row">
    <div class="col-sm-6 col-lg-6">
        <div class="card mb-4">
            <div class="card-header">
                <h4 style="text-align:center;">Assets by Status</h4>
            </div>
            <div>
                <div id="chartasset" style="width: 100%; height: 500px;"></div>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-6">
        <div class="card mb-4">
            <div class="card-header">
                <h4 style="text-align:center;">Assets By country</h4>
            </div>
            <div>
                <div id="chartCountry" style="width:100%; height:500px;"></div>
            </div>
        </div>
    </div>
</div>

{{-- show history --}}
<div class="card">
    <div class="card-header">
        <h4 style="text-align:center;">History of users</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="table-responsive-- custom-table-wraper">
                <table id="history-table" class="table table-striped custom-table-ui" style="width:100%">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Action</th>
                            <th>Module Name</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
&nbsp;&nbsp;&nbsp;
<div>
        <div class="card">
            <div class="card-header">
                <h4 style="text-align:center;">Recent Activity</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="table-responsive-- custom-table-wraper">
                        <table id="recentactivity" class="table table-striped custom-table-ui" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Action</th>
                                    <th>Module Name</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>



@push ('after-styles')
<!-- DataTables Core and Extensions -->
<link rel="stylesheet" href="{{ asset('vendor/datatable/datatables.min.css') }}">

@endpush

@push('after-scripts')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="{{ asset('vendor/datatable/datatables.min.js') }}"></script>
<script type="text/javascript">
    $('#history-table').DataTable({
        processing: true,
        serverSide: true,
        autoWidth: true,
        responsive: true,
        scrollX: true,
        pagingType: 'numbers',
        ajax: '{{ route("backend.users.history_data") }}',
        columns: [{
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'action',
                name: 'action'
            },
            {
                data: 'module_name',
                name: 'module_name'
            },
            // {
            //     data: 'history_id',
            //     name: 'history.id',
            //     orderable: false,
            //     searchable: false
            // }
        ]
    });
</script>

{{-- Recent history table in  --}}

<script type="text/javascript">
    $('#recentactivity').DataTable({
        processing: true,
        serverSide: true,
        autoWidth: true,
        responsive: true,
        scrollX: true,
        pagingType: 'numbers',
        ajax: '{{ route("backend.users.recenthistory_data") }}',
        columns: [{
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'action',
                name: 'action'
            },
            {
                data: 'module_name',
                name: 'module_name'
            },
            // {
            //     data: 'history_id',
            //     name: 'history.id',
            //     orderable: false,
            //     searchable: false
            // }
        ]
    });
</script>

{{-- pie chart script start hear --}}
<script>

    $(document).ready(function(){

    var chart = new CanvasJS.Chart("chartCountry", {
        animationEnabled: true,
        title:{
            //text: "Assets by Country",
            horizontalAlign: "center"
        },
        data: [{
            type: "doughnut",
            startAngle: 60,
            innerRadius: 80,
            indexLabelFontSize: 12,
            indexLabel: "{label} - #percent%",
            toolTipContent: "<b>{label}:</b> {y} (#percent%)",
            dataPoints: [
			{ y: 67, label: "Inbox" },
			{ y: 28, label: "Archives" },
			{ y: 10, label: "Labels" },
			{ y: 7, label: "Drafts"},
			{ y: 15, label: "Trash"},
			{ y: 6, label: "Spam"}
		    ]
            // dataPoints: [
            //     <?php
            //         foreach($chartCountry as  $value)
            //         {
            //             echo '{y:'.$value[1].', label :"'.$value[0].'"},';
            //         }
            //      ?>
            // ]
        }]
    });
    chart.render();

    })
    </script>

    <script>
         $(document).ready(function(){

var chart = new CanvasJS.Chart("chartasset", {
    animationEnabled: true,
    title:{
        //text: "Assets by Region",
        horizontalAlign: "center"
    },
    data: [{
        type: "doughnut",
        startAngle: 10,
        innerRadius: 80,
        indexLabelFontSize: 12,
        indexLabel: "{label} - #percent%",
        toolTipContent: "<b>{label}:</b> {y} (#percent%)",
        // dataPoints: [
        //     <?php
        //         foreach($chartassets as  $value)
        //         {
        //             echo '{y:'.$value[1].', label :"'.$value[0].'"},';
        //         }
        //     ?>
        // ]
        dataPoints: [
			{ y: 67, label: "Inbox" },
			{ y: 28, label: "Archives" },
			{ y: 10, label: "Labels" },
			{ y: 7, label: "Drafts"},
			{ y: 15, label: "Trash"},
			{ y: 6, label: "Spam"}
		    ]
    }]
});
chart.render();

})

    </script>
@endpush
