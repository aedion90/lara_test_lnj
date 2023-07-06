<!DOCTYPE html>
<html>

<head>
    <title>LNJ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    <style>
        @media (min-width: 768px){
            .form-group label.left {
              float: left;
              width: 150px;
              padding: 5px;
            }
            .form-group span.left2 {
              display: block;
              overflow: hidden;
            }
            .form-group { margin-bottom: 10px; }
        }
        .container {
            max-width: 600px;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <center><h4>FORM EDIT</h4></center>
        <form method="post" id="update_user" name="update_user" action="/home/update">
            {{ csrf_field() }}
            <div class="form-group">
                <label class="left">CARP Code</label>
                <input type="hidden" name="ID" class="form-control" required="required" value="{{ $data->ID }}">
                <span class="left2"><input type="text" name="CARP_Code" class="form-control " required="required" value="{{ $data->CARP_Code }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Category</label>
                <span class="left2"><input type="text" name="Category" class="form-control " required="required" value="{{ $data->Category }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Initiator</label>
                <span class="left2"><input type="text" name="Initiator" class="form-control " required="required" value="{{ $data->Initiator }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Initiator Div</label>
                <span class="left2"><input type="text" name="Initiator_Div" class="form-control " required="required" value="{{ $data->Initiator_Div }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Initiator Branch</label>
                <span class="left2"><input type="text" name="Initiator_Branch" class="form-control " required="required" value="{{ $data->Initiator_Branch }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Recipient</label>
                <span class="left2"><input type="text" name="Recipient" class="form-control " required="required" value="{{ $data->Recipient }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Recipient Div</label>
                <span class="left2"><input type="text" name="Recipient_Div" class="form-control " required="required" value="{{ $data->Recipient_Div }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Recipient Branch</label>
                <span class="left2"><input type="text" name="Recipient_Branch" class="form-control " required="required" value="{{ $data->Recipient_Branch }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Verified By</label>
                <span class="left2"><input type="text" name="Verified_By" class="form-control " required="required" value="{{ $data->Verified_By }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Due Date</label>
                <span class="left2"><input type="text" name="Due_Date" id="Due_Date" class="form-control " required="required" value="{{ $data->Due_Date }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Effectiveness</label>
                <span class="left2"><input type="text" name="Effectiveness" class="form-control " required="required" value="{{ $data->Effectiveness }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Status Date</label>
                <span class="left2"><input type="text" name="Status_Date" id="Status_Date" class="form-control " required="required" value="{{ $data->Status_Date }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Stage</label>
                <span class="left2"><input type="text" name="Stage" class="form-control " required="required" value="{{ $data->Stage }}" ></span>
            </div>
            <div class="form-group">
                <label class="left">Status</label>
                <span class="left2"><input type="text" name="Status" class="form-control " required="required" value="{{ $data->Status }}" ></span>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Update Data</button>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/additional-methods.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <script>
    $("#Status_Date").datepicker({ 
        dateFormat: 'yy-mm-dd',
        changeMonth: true,
        changeYear: true, 
    });
    $("#Due_Date").datepicker({ 
        dateFormat: 'yy-mm-dd',
        changeMonth: true,
        changeYear: true, 
    });
    </script>
</body>

</html>