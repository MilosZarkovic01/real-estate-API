<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RealEstateResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */

    public static $wrap = 'real_estate';

    public function toArray($request)
    {
        //return parent::toArray($request);
        return [
            'id'=>$this->resource->id,
            'address'=>$this->resource->address,
            'city'=>$this->resource->city,
            'sellingPrice'=>$this->resource->sellingPrice,
            'type_of_real_estate_'=> new TypeOfRealEstateResource($this->resource->type),
            'user'=>new UserResource($this->resource->user)
        ];
    }
}
