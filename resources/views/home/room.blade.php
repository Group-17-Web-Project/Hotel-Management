<div class="our_room">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage">
               <h2>Our Room</h2>
               <p>Lorem Ipsum available, but the majority have suffered </p>
            </div>
         </div>
      </div>

      <div class="row">
         @foreach($room as $rooms)


         <div class="col-md-4 col-sm-6" style="height:500px">
            <div id="serv_hover" class="room">
               <div class="room_img">
                  <img style="height:200px; width:100%" src="room/{{$rooms->image}}" alt="#" />
               </div>
               <div class="bed_room">
                  <h3>{{$rooms->room_title}}</h3>
                  <p style="text-align:start">{{$rooms->n_bathroom}} Bathooms</p>
                  <p style="text-align:start">{{$rooms->n_bed}} Beds</p>
                  <p style="text-align:start">{{$rooms->n_people}} Peoples</p>
                  <p style="font-weight:700;font-size:20px">{{$rooms->price}} Per night</p>
                  <a class="btn btn-primary mt-5" href="{{url('room_details',$rooms->id)}}">Room Detail</a>
               </div>
            </div>
         </div>
         @endforeach
      </div>
   </div>
</div>