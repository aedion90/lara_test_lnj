<?php 
$d_status = array();
$d_stage = array();
foreach ($data as $key => $value) {
    array_push($d_status, $value->Status);
    array_push($d_stage, $value->Stage);
}
arsort($d_status);
arsort($d_stage);


function array_avg($array, $round=1){
    $num = count($array);
    return array_map(
        function($val) use ($num,$round){
            return array('count'=>$val,'avg'=>round($val/$num*100, $round));
        },
        array_count_values($array));
}

$status_avrg = array_avg($d_status);
$ar_status_n = '';
$ar_status_c = '';
foreach ($status_avrg as $key => $value):
    $ar_status_n .= '"'.$key.'",';
    $ar_status_c .= $value['avg'].',';
endforeach ;

$stage_avrg = array_avg($d_stage);
// echo json_encode($stage_avrg); exit();

function generateRandomString($length = 6) {
    return substr(str_shuffle(str_repeat($x='123456789ABCDEF', ceil($length/strlen($x)) )),1,$length);
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LNJ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedcolumns/4.3.0/css/fixedColumns.dataTables.min.css">
    <style type="text/css">
        .table-standard td {
          padding: 2px 5px !important;
          font-size: 12px;
        }
        .col-md-3 {
            padding-left: 4px;
            padding-right: 4px;
            padding-bottom: 4px;
        }
    </style>
</head>

<body>
    <div class="row mt-4">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="d-flex justify-content-end">
                <a href="/home/tambah" class="btn btn-success mb-2">Add Data</a>
            </div>
            <div class="mt-3">
                <table class="table table-standard table-bordered table-hover display nowrap" id="data-list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Create Date</th>
                            <th>CARP Code</th>
                            <th>Category</th>
                            <th>Initiator</th>
                            <th>Initiator Div</th>
                            <th>Initiator Branch</th>
                            <th>Recipient</th>
                            <th>Recipient Div</th>
                            <th>Recipient Branch</th>
                            <th>Verified By</th>
                            <th>Due Date</th>
                            <th>Effectiveness</th>
                            <th>Status Date</th>
                            <th>Stage</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data as $p)
                        <tr>
                            <td class="text-center">{{ $p->ID }}</td>
                            <td class="text-center">{{ date_format(date_create($p->Create_Date),"d M Y") }}</td>
                            <td class="text-center">{{ $p->CARP_Code }}</td>
                            <td>{{ $p->Category }}</td>
                            <td>{{ $p->Initiator }}</td>
                            <td>{{ $p->Initiator_Div }}</td>
                            <td class="text-center">{{ $p->Initiator_Branch }}</td>
                            <td>{{ $p->Recipient }}</td>
                            <td>{{ $p->Recipient_Div }}</td>
                            <td class="text-center">{{ $p->Recipient_Branch }}</td>
                            <td>{{ $p->Verified_By }}</td>
                            <td class="text-center">{{ date_format(date_create($p->Due_Date),"d M Y") }}</td>
                            <td class="text-center">{{ $p->Effectiveness }}</td>
                            <td class="text-center">{{ date_format(date_create($p->Status_Date),"d M Y") }}</td>
                            <td class="text-center">{{ $p->Stage }}</td>
                            <td class="text-center">{{ $p->Status }}</td>
                            <td>
                                <a href="/home/edit/{{ $p->ID }}" class="btn btn-primary btn-sm">Edit</a>
                                <a href="/home/hapus/{{ $p->ID }}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="container form-inline">
        <div style="border-top: 1px solid black; margin-top: 20px; width: 50%; height: 400px;">
            <h4>Persentase Status</h4>
            <canvas id="myBarChart1" width="300" height="300"></canvas>
        </div>
        <div style="border-top: 1px solid black; margin-top: 20px; width: 50%; height: 400px;">
            <h4>Persentase Stage</h4>
            <div class="row">
            <?php foreach ($stage_avrg as $key => $value): ?>
                <div class="col-md-3">
                    <div class="card">
                      <div class="card-header" style="background-color: #{{ generateRandomString() }}45;"><center>{{ $key }}</center></div>
                      <div class="card-body" style="text-align: center;">
                        {{ $value['count'].' ( '.$value['avg'].'% )' }}
                      </div>
                    </div>
                </div>
            <?php endforeach ?>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/fixedcolumns/4.3.0/js/dataTables.fixedColumns.min.js"></script>
    <script src="{{ URL::asset('public/Chart.js') }}"></script>

    <script>
    $(document).ready(function() {
        $('#data-list').DataTable({
            fixedColumns: {
                left: 1,
                right: 1
            },
            scrollX: true,
        });

        // -----------------------------------------------------------------
        data_mentah1 = [<?php echo substr($ar_status_n, 0, -1) ?>]
        var mychart1 = document.getElementById("myBarChart1").getContext("2d");
        var data = {
            labels: [<?php echo substr($ar_status_n, 0, -1) ?>],
            datasets: [{
                label: "Position",
                data: [<?php echo substr($ar_status_c, 0, -1) ?>],
                backgroundColor: getRandomColor(data_mentah1.length),
                hoverOffset: 4,
                tooltips: {
                  callbacks: {
                    label: function(labelItem) {
                      return labelItem + "%";
                    }
                  }
                } 
            }]
        };
        new Chart(mychart1, {
            type: 'pie',
            data: data,
            options: {
                maintainAspectRatio: false,
            }
        });


        // -----------------------------------------------------------------
        function getRandomColor(count) {
            var colors = [];
            for (var i = 0; i < count; i++) {
                var letters = '0123456789ABCDEF'.split('');
                var color = '#';
                for (var x = 0; x < 6; x++) {
                    color += letters[Math.floor(Math.random() * 16)];
                }
                colors.push(color);
            }
            return colors;
        }
    });
    </script>
</body>

</html>