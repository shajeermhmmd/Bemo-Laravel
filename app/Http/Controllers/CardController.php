<?php

namespace App\Http\Controllers;

use App\Models\Card;
use Illuminate\Http\Request;

class CardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function updateColumn(Request $request)
    {
        Card::truncate();
        foreach ($request['data'] as $col) {
            foreach ($col['card'] as $key => $value) {
                Card::create([
                    'column_id' => $col['id'],
                    'name' => $value['name'],
                    'description' => $value['description'],
                    'order' => $value['order'],
                ]);
            }
        }
        $data['status'] = 200;
        $data['message'] = 'Successfully Added';
        return $data;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Card::create([
            'column_id' => $request->column_id,
            'name' => $request->name,
            'description' => $request->description,
            'order' => $request->order,
        ]);
        $data['status'] = 200;
        $data['message'] = 'Successfully Added';
        return $data;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Card  $card
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $card_id)
    {
        Card::whereId($card_id)->update([
            'name' => $request->name,
            'description' => $request->description,
        ]);
        $data['status'] = 200;
        $data['message'] = 'Successfully Updated';
        return $data;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Card  $card
     * @return \Illuminate\Http\Response
     */
    public function destroy(Card $card)
    {
        //
    }
}
