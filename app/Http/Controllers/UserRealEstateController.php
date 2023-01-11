<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RealEstate;

class UserRealEstateController extends Controller
{
    //
    public function index($user_id){
        $real_estates = RealEstate::get()->where('user_id',$user_id);
        if(is_null($real_estates)){
            return response()->json('Data not found', 404);
        }
        return response()->json($real_estates);
    }
}
