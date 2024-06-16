<div class="our_room">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage">
               <h2>Đặt phòng</h2>
            </div>
         </div>
      </div>

      <div class="row">
         @foreach($room as $rooms)


         <div class="col-md-4 col-sm-6" style="height:500px;">
            <div id="serv_hover" class="room">
               <div class="room_img">
                  <img style="height:200px; width:100%" src="room/{{$rooms->image}}" alt="#" />
               </div>
               <div class="bed_room">
                  <h3>{{$rooms->room_title}}</h3>
                  <p style="text-align:start">{{$rooms->n_bathroom}} Phòng tắm</p>
                  <p style="text-align:start">{{$rooms->n_bed}} Giường</p>
                  <p style="text-align:start">{{$rooms->n_people}} Người</p>
                  <p style="font-weight:700;font-size:20px">{{$rooms->price}}/Đêm</p>
                  <a class="btn btn-primary mt-5" href="{{url('room_details',$rooms->id)}}">Xem chi tiết</a>
               </div>
            </div>
         </div>
         @endforeach
      </div>
   </div>
</div>