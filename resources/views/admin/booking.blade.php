<!DOCTYPE html>
<html>

<head>

    @include('admin.css')
    <style type="text/css">
        .table_deg {
            border: 2px solid white;
            margin: auto;
            width: 100%;
            text-align: center;
            margin-top: 40px;
        }

        .th_deg {
            background-color: skyblue;
            padding: 15px;
        }

        tr {
            border: 3px solid white;
        }

        td {
            padding: 10px;
        }
    </style>
</head>

<body>
    @include('admin.header')
    @include('admin.sidebar')
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">


                <table class="table_deg">
                    <tr>
                        <th class="th_deg">Id phòng</th>
                        <th class="th_deg">Tên khách hàng</th>
                        <th class="th_deg">Email</th>
                        <th class="th_deg">Điện thoại</th>
                        <th class="th_deg">Ngày nhận phòng</th>
                        <th class="th_deg">Ngày trả phòng</th>
                        <th class="th_deg">Trạng thái</th>
                        <th class="th_deg">Tên Phòng</th>
                        <th class="th_deg">Giá phòng</th>
                        <th class="th_deg">Hình ảnh</th>
                        <th class="th_deg">Xoá</th>
                        <th class="th_deg">Trạng thái</th>

                    </tr>
                    @foreach($data as $data)
                    <tr>
                        <td>{{$data->room_id}}</td>
                        <td>{{$data->name}}</td>
                        <td>{{$data->email}}</td>
                        <td>{{$data->phone}}</td>
                        <td>{{$data->start_date}}</td>
                        <td>{{$data->end_date}}</td>
                        <td>
                            @if($data->status== 'approve')
                            <span style="color:green;">Chấp nhận</span>
                            @endif
                            @if($data->status== 'rejected')
                            <span style="color:red;">Từ chối</span>
                            @endif
                            @if($data->status== 'waiting')
                            <span style="color:yellow;">Đang chờ</span>
                            @endif
                        </td>
                        <td>{{$data->room->room_title}}</td>
                        <td>{{$data->room->price}}</td>
                        <td>
                            <img style="width: 200!important" src="/room/{{$data->room->image}}" alt="">
                        </td>
                        <td>
                            <a onclick="return confirm('Are you sure to delete this')" class="btn btn-danger" href="{{url('delete_booking',$data->id)}}">Xoá</a>
                        </td>
                        <td>
                            <span style="padding-bottom:10px;">
                                <a class="btn btn-success" href="{{url('approve_book',$data->id)}}">Chấp nhận</a>
                            </span>
                            <a class="btn btn-warning" href="{{url('reject_book',$data->id)}}">Từ chối</a>
                        </td>
                    </tr>
                    @endforeach
                </table>



            </div>
        </div>
    </div>

    @include('admin.footer')
</body>

</html>