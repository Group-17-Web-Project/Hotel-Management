<div class="contact">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage">
               <h2>Liên hệ</h2>
            </div>

            @if(session()->has('message'))
            <div class="alert alert-success">
               <button type="button" class="close" data-bs-dismiss="alert">X</button>
               {{session()->get('message')}}
            </div>

            @endif

         </div>
      </div>
      <div class="row">
         <div class="col-md-6">
            <form id="request" class="main_form" action="{{url('contact')}}" method="Post">

               @csrf


               <div class="row">
                  <div class="col-md-12 ">
                     <input class="contactus" placeholder="Name" type="type" name="name" required>
                  </div>
                  <div class="col-md-12">
                     <input class="contactus" placeholder="Email" type="email" name="email" required>
                  </div>
                  <div class="col-md-12">
                     <input class="contactus" placeholder="Số điện thoại" type="number" name="phone" required>
                  </div>
                  <div class="col-md-12">
                     <textarea class="textarea" placeholder="Lời nhắn" type="type" name="message" required>Message</textarea>
                  </div>
                  <div class="col-md-12">
                     <button type="submit" class="send_btn">Gửi</button>
                  </div>
               </div>
            </form>
         </div>
         <div class="col-md-6">
            <div class="map_main">
               <div class="map-responsive">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.7485384583865!2d105.7461114740086!3d20.962611180670244!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313452efff394ce3%3A0x391a39d4325be464!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBQaGVuaWthYQ!5e0!3m2!1svi!2s!4v1718337614395!5m2!1svi!2s" width="600" height="400" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>