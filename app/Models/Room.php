<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'room_title',
        'image',
        'description',
        'price',
        'wifi',
        'n_bathroom',
        'n_bed',
        'n_people',
        'room_type'
    ];
}
