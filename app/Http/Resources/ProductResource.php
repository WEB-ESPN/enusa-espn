<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "category_id" => $this->category_id,
            "code" => $this->code,
            "title" => $this->title,
            "description" => $this->description,
            "image" => env('VITE_APP_URL') . $this->image,
            "created_at" => $this->created_at,
            "updated_at" => $this->updated_at,
            "category_title" => $this->category->title,
            "category_code" => $this->category->code
        ];
    }
}
