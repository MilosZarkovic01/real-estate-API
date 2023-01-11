<?php

namespace App\Http\Controllers;

use App\Models\RealEstate;
use Illuminate\Http\Request;
use App\Http\Resources\RealEstateResource;
use App\Http\Resources\RealEstateCollection;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class RealEstateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $real_estates = RealEstate::all();
        //return $real_estates;

        return new RealEstateCollection($real_estates);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'address'=>'required|string|max:255',
            'city'=>'required|string|max:255',
            'sellingPrice'=>'required',
            'type_of_real_estate_id'=>'required',
        ]);

        if($validator->fails()){
            return response()->json($validator->errors());
        }
        
        $real_estate = RealEstate::create([
            'address'=>$request->address,
            'city'=>$request->city,
            'sellingPrice'=>$request->sellingPrice,
            'type_of_real_estate_id'=>$request->type_of_real_estate_id,
            'user_id'=>Auth::user()->id
        ]);

        return response()->json(['Real estate created successfully.', new RealEstateResource($real_estate)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RealEstate  $realEstate
     * @return \Illuminate\Http\Response
     */
    public function show(RealEstate $id)
    {
        $real_estate = RealEstate::find($id);
        if(is_null($real_estate)){
            return response()->json('Data not found', 404);
        }
        return response()->json($real_estate);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RealEstate  $realEstate
     * @return \Illuminate\Http\Response
     */
    public function edit(RealEstate $realEstate)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RealEstate  $realEstate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RealEstate $realEstate)
    {
        $validator = Validator::make($request->all(),[
            'address'=>'required|string|max:255',
            'city'=>'required|string|max:255',
            'sellingPrice'=>'required',
            'type_of_real_estate_id'=>'required',
        ]);

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $realEstate->address = $request->address;
        $realEstate->city = $request->city;
        $realEstate->sellingPrice = $request->sellingPrice;
        $realEstate->type_of_real_estate_id = $request->type_of_real_estate_id;

        $realEstate->save();
        return response()->json(['Real estate updated successfully.', new RealEstateResource($realEstate)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RealEstate  $realEstate
     * @return \Illuminate\Http\Response
     */
    public function destroy(RealEstate $realEstate)
    {
        //
    }
}
