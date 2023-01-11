<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeOfRealEstate extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function real_estates(){
        return $this->hasMany(RealEstate::class);
    }
}
