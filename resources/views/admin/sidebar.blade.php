<div class="d-flex align-items-stretch">
    <!-- Sidebar Navigation-->
    <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="admin/img/avatar-6.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
                <h1 class="h5">Nhóm 17</h1>
                <p>Laravel</p>
            </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li><a href="/home">Trang chủ </a></li>
            <li><a href="{{url('view_room')}}">Xem phòng</a></li>
            <li><a href="{{url('view_gallary')}}"> Gallary</a></li>
            <li><a href="{{url('bookings')}}">Phòng khách đặt</a></li>
            <li><a href="{{url('create_room')}}">Thêm phòng</a></li>
            <li><a href="{{url('all_messages')}}">Tin nhắn</a></li>

        </ul>
    </nav>