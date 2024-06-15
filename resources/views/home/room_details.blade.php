<!DOCTYPE html>
<html lang="en">

<head>
    <base href="/public">
    @include('home.css')

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style type="text/css">
        label {
            display: inline-block;
            width: 200px;
        }

        input {
            width: 100%;
        }
    </style>
</head>

<body class="main-layout">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="images/loading.gif" alt="#" /></div>
    </div>
    <!-- end loader -->
    <!-- header -->
    <header>
        @include('home.header')
    </header>

    <div class="our_room">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Our Room</h2>
                        <p>Booking Room Now</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <div id="serv_hover" class="room">
                        <div style="padding: 20px;" class="room_img">
                            <img style="height:300px; width:100%" src="/room/{{$room->image}}" alt=" #" />
                        </div>
                        <div class="bed_room">
                            <p>Room id: {{$room->id}}</p>
                            <h2>{{$room->room_title}}</h2>
                            <p style="padding: 12px;">{{$room->description}}</p>
                            <h4 style="padding: 12px;">Free wifi : {{$room->wifi}}</h4>
                            <h3 style="padding: 12px;">Room Type : {{$room->room_type}}</h3>
                            <h3 id="roomPrice" style="padding: 12px;">Price : {{$room->price}} Per night</h3>
                            <h3 style="padding: 12px;">Numbers of Bathrooms: {{$room->n_bathroom}}</h3>
                            <h3 style="padding: 12px;">Numbers of Beds: {{$room->n_bed}}</h3>
                            <h3 style="padding: 12px;">Number of Peoples: {{$room->n_people}}</h3>
                            <div id="totalPrice" style="font-size:20px; margin-top:20px;">Total: </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <h1 style="font-size:40px !important">Book Room</h1>
                    <div>
                        @if(session()->has('message'))
                        <div class="alert alert-success">
                            <button type="button" class="close" data-bs-dismiss="alert">X</button>
                            {{session()->get('message')}}
                        </div>
                        @endif
                    </div>

                    @if($errors)
                    @foreach($errors->all() as $errors)
                    <li style="color:red">
                        {{$errors}}
                    </li>
                    @endforeach
                    @endif

                    <form id="bookingForm" action="{{url('add_booking', $room->id)}}" method="Post">
                        @csrf
                        <div>
                            <label for="">Name</label>
                            <input type="text" name="name" @if(Auth::id()) value="{{Auth::user()->name}}" @endif>
                        </div>
                        <div>
                            <label for="">Email</label>
                            <input type="email" name="email" @if(Auth::id()) value="{{Auth::user()->email}}" @endif>
                        </div>
                        <div>
                            <label for="">Phone</label>
                            <input type="number" name="phone" @if(Auth::id()) value="{{Auth::user()->phone}}" @endif>
                        </div>
                        <div>
                            <label for="">Start Date</label>
                            <input type="date" name="startDate" id="startDate">
                        </div>
                        <div>
                            <label for="">End Date</label>
                            <input type="date" name="endDate" id="endDate">
                        </div>
                        <div style="padding-top:20px">
                            <input type="button" style="background-color: skyblue;" class="btn btn-primary" value="Calculate Price" id="calculatePriceButton">
                            <input type="submit" style="background-color: skyblue;" class="btn btn-primary" value="Book Room" id="submitButton" style="display:none;">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    @include('home.footer')

    <script type="text/javascript">
        $(function() {
            var dtToday = new Date();
            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();



            if (month < 10) month = '0' + month.toString();
            if (day < 10) day = '0' + day.toString();
            var maxDate = year + '-' + month + '-' + day;
            $('#startDate').attr('min', maxDate);
            $('#endDate').attr('min', maxDate);

            $('#calculatePriceButton').on('click', function() {
                var startDate = $('#startDate').val();
                var endDate = $('#endDate').val();
                var priceText = $('#roomPrice').text();
                var price = parseFloat(priceText.match(/\d+/)[0]);
                console.log('price: ', price);


                if (startDate && endDate) {
                    $.ajax({
                        url: '/calculate-price/',
                        type: 'GET',
                        data: {
                            startDate: startDate,
                            endDate: endDate,
                            price: price
                        },
                        success: function(response) {
                            $('#totalPrice').text('Total Price: $' + response.totalPrice);
                            $('#submitButton').show();
                        },
                        error: function(error) {
                            console.log(error);
                        }
                    });
                } else {
                    alert('Please select both start and end dates.');
                }
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>