<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use Redirect;
use Illuminate\Support\Facades\DB;


class cHome extends Controller {
	public function __construct()
    {

    }

	public function index()
	{
        $laravel = app();
        $this->data['text'] = "Your Laravel version is ".$laravel::VERSION;
        $this->data['data'] = DB::table('tb_data')->get();
		return view('home', $this->data);
	}
    public function tambah()
    {
        return view('tambah');
    }
    public function store(Request $request)
    {
        DB::table('tb_data')->insert([
            "Create_Date" => date("Y-m-d"),
            "CARP_Code" => $request->CARP_Code,
            "Category" => $request->Category,
            "Initiator" => $request->Initiator,
            "Initiator_Div" => $request->Initiator_Div,
            "Initiator_Branch" => $request->Initiator_Branch,
            "Recipient" => $request->Recipient,
            "Recipient_Div" => $request->Recipient_Div,
            "Recipient_Branch" => $request->Recipient_Branch,
            "Verified_By" => $request->Verified_By,
            "Due_Date" => date_format(date_create($request->Due_Date),"Y-m-d"),
            "Effectiveness" => $request->Effectiveness,
            "Status_Date" => date_format(date_create($request->Status_Date),"Y-m-d"),
            "Stage" => $request->Stage,
            "Status" => $request->Status,
        ]);
        return redirect('/home');
    }
    public function edit($id)
    {
        $this->data['data'] = DB::table('tb_data')->where('ID',$id)->get()[0];
        // echo json_encode($this->data['data']); exit();
        return view('edit', $this->data);
    }
    public function update(Request $request)
    {
        DB::table('tb_data')->where('ID',$request->ID)->update([
            "CARP_Code" => $request->CARP_Code,
            "Category" => $request->Category,
            "Initiator" => $request->Initiator,
            "Initiator_Div" => $request->Initiator_Div,
            "Initiator_Branch" => $request->Initiator_Branch,
            "Recipient" => $request->Recipient,
            "Recipient_Div" => $request->Recipient_Div,
            "Recipient_Branch" => $request->Recipient_Branch,
            "Verified_By" => $request->Verified_By,
            "Due_Date" => date_format(date_create($request->Due_Date),"Y-m-d"),
            "Effectiveness" => $request->Effectiveness,
            "Status_Date" => date_format(date_create($request->Status_Date),"Y-m-d"),
            "Stage" => $request->Stage,
            "Status" => $request->Status,
        ]);
        return redirect('/home');
    }
    public function hapus($id)
    {
        DB::table('tb_data')->where('ID',$id)->delete();
        return redirect('/home');
    }

}