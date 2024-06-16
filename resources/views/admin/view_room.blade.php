<!DOCTYPE html>
<html>

<head>
    @include('admin.css')
    <style type="text/css">
        .table_deg {
            border: 2px solid white;
            margin: auto;
            width: 80%;
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
                        <th class="th_deg">Tên phòng</th>
                        <th class="th_deg">Nội dung</th>
                        <th class="th_deg">Giá phòng</th>
                        <th class="th_deg">Wifi</th>
                        <th class="th_deg">Nhà tắm</th>
                        <th class="th_deg">Giường</th>
                        <th class="th_deg">Số người</th>
                        <th class="th_deg">Loại phòng</th>
                        <th class="th_deg">Hình ảnh</th>
                        <th class="th_deg">Xoá</th>
                        <th class="th_deg">Cập nhật</th>
                    </tr>
                    @foreach($data as $data)
                    <tr>
                        <td>{{$data->room_title}} </td>
                        <td>{!! Str::limit($data->description,150) !!}</td>
                        <td>{{$data->price}}</td>
                        <td>{{$data->wifi}}</td>
                        <td>{{$data->n_bathroom}}</td>
                        <td>{{$data->n_bed}}</td>
                        <td>{{$data->n_people}}</td>
                        <td>{{$data->room_type}}</td>
                        <td>
                            <img width="100" src="room/{{$data->image}}" alt="">
                        </td>
                        <td>
                            <a onclick="return confirm('Are you sure to delete this room ?')" class="btn btn-danger" href="{{url('room_delete',$data->id)}}">Xoá</a>
                        </td>
                        <td>
                            <a onclick="" class="btn btn-warning" href="{{url('room_update',$data->id)}}">Cập nhật</a>
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