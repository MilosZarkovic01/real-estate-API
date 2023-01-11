<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RealEstate extends Model
{
    use HasFactory;

    protected $fillable = [
        'address',
        'city',
        'sellingPrice',
        'type_of_real_estate_id',
        'user_id',
    ];

    public function type(){
        return $this->belongsTo(TypeOfRealEstate::class, 'type_of_real_estate_id');
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}
