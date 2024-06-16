<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\Booking;
use App\Models\Contact;
use App\Models\Gallary;
use Carbon\Carbon;
use Psy\Readline\Hoa\Console;
use SebastianBergmann\CodeCoverage\Report\Xml\Totals;

class HomeController extends Controller
{
    public function room_details($id)
    {
        $room = Room::find($id);
        return view('home.room_details', compact('room'));
    }


    public function add_booking(Request $request, $id)
    {

        $request->validate([
            'startDate' => 'required|date',
            'endDate' => 'date|after:startDate',
        ]);

        $data = new Booking;

        $data->room_id = $id;

        $data->name = $request->name;

        $data->email = $request->email;

        $data->phone = $request->phone;

        $startDate = $request->startDate;

        $endDate = $request->endDate;

        $isBooked = Booking::where('room_id', $id)
            ->where('start_date', '<=', $endDate)
            ->where('end_date', '>=', $startDate)->exists();

        if ($isBooked) {
            return redirect()->back()->with('message', 'Room is already booked please try different date');
        } else {
            $data->start_date = $request->startDate;

            $data->end_date = $request->endDate;

            $data->save();

            return redirect()->back()->with('message', 'Room Booked Successfully');
        }
    }
    public function contact(Request $request)
    {
        $contact = new Contact;

        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;

        $contact->save();

        return redirect()->back()->with('message', 'Message Sent Successfully');
    }
    public function our_rooms()
    {
        $room = Room::all();
        return view('home.our_rooms', compact('room'));
    }
    public function hotel_gallary()
    {
        $gallary = Gallary::all();
        return view('home.hotel_gallary', compact('gallary'));
    }
    public function contact_us()
    {
        return view('home.contact_us');
    }
    public function about_hotel()
    {
        return view('home.about_hotel');
    }

    //handle price
    public function calculatePrice(Request $request)
    {


        // $room = Room::find($roomId);

        // Xác thực các ngày nhập vào
        $request->validate([
            'startDate' => 'required|date|after_or_equal:today',
            'endDate' => 'required|date|after_or_equal:startDate',
            'price' => 'required|numeric',
        ]);

        // Phân tích các ngày
        $startDate = Carbon::parse($request->startDate);
        $endDate = Carbon::parse($request->endDate);

        // Tính số ngày
        $numberOfDays = $endDate->diffInDays($startDate) + 1;

        // Tính tổng giá tiền
        $totalPrice = $request->price * $numberOfDays;


        return response()->json(['totalPrice' => $totalPrice]);
    }
}
