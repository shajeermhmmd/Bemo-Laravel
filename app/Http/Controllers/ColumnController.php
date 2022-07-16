<?php

namespace App\Http\Controllers;

use App\Models\{Column,Card};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
class ColumnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Column::with('Card')->get();
        $res['status'] = 200;
        $res['columns'] = $data;
        return $res;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Column::create([
            'title' => $request->title
        ]);
        $data['columns'] = Column::with('Card')->get();
        $data['status'] = 200;
        $data['message'] = 'Successfully Added';
        return $data;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Column  $column
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $column_id)
    {
        Column::whereId($column_id)->update([
            'title' => $request->title
        ]);
        $data['status'] = 200;
        $data['message'] = 'Successfully Updated';
        return $data;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Column  $column
     * @return \Illuminate\Http\Response
     */
    public function destroy($column_id)
    {
        Card::where('column_id', $column_id)->delete();
        Column::whereId($column_id)->delete();
        $data['status'] = 200;
        $data['message'] = 'Successfully Deleted';
        return $data;
    }

    /**
     * Export the Database.
     *
     */
    
    public function exportDB()
    {
        $databaseName = env('DB_DATABASE');
        $userName = env('DB_USERNAME');
        $password = env('DB_PASSWORD');

        $db = new \MySQLi('localhost', $userName, $password, $databaseName);
        $dump = new \MySQLDump($db);
        $dump->save('bemo_assessment.sql');
        
        $data['link'] = public_path('bemo_assessment.sql');
        return Response::download($data['link']); 
    }
    
}
