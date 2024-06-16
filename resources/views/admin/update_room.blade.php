<!DOCTYPE html>
<html>

<head>
    <base href="/public">
    @include('admin.css')
    <style type="text/css">
        label {
            display: inline-block;
            width: 200px;
        }

        .dev_deg {
            padding-top: 30px;
        }

        .div_center {
            text-align: center;
            padding-top: 40px;
        }
    </style>
</head>

<body>
    @include('admin.header')
    @include('admin.sidebar')
    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">
                <div class="div_center">
                    <h1 style="font-size: 30px; font-weigh:bold;">Cập nhật phòng</h1>
                    <form action="{{url('edit_room',$data->id)}}" method="Post" enctype="multipart/form-data">
                        @csrf
                        <div class="dev_deg">
                            <label for="">Tiêu đề phòng</label>
                            <input type="text" name="title" id="" value="{{$data->room_title}}">
                        </div>
                        <div class="dev_deg">
                            <label for="">Nội dung</label>
                            <textarea name="description" id="">{{$data->description}}</textarea>
                        </div>
                        <div class="dev_deg">
                            <label for="">Giá phòng</label>
                            <input type="number" name="price" id="" value="{{$data->price}}">
                        </div>
                        <div class="dev_deg">
                            <label for="">Loại phòng</label>
                            <select name="type" id="">
                                <option value="{{$data->room_type}}">{{$data->room_type}}</option>
                                <option value="regular">Regular</option>
                                <option value="premium">Premium</option>
                                <option value="deluxe">Deluxe</option>

                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Wifi miễn phí</label>
                            <select name="wifi" id="">
                                <option value="{{$data->wifi}}">{{$data->wifi}}</option>
                                <option value="yes">Có</option>
                                <option value="no">Không</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Số nhà tắm</label>
                            <select name="n_bathroom" id="">
                                <option value="{{$data->n_bathroom}}">{{$data->n_bathroom}}</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Số giường</label>
                            <select name="n_bed" id="">
                                <option value="{{$data->n_bed}}">{{$data->n_bed}}</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Số người</label>
                            <select name="n_people" id="">
                                <option value="{{$data->n_people}}">{{$data->n_people}}</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label>Ảnh hiện tại</label>
                            <img style="margin:auto;" width=" 100" src=" /room/{{$data->image}}" alt="">
                        </div>
                        <div class="dev_deg">
                            <label>Tải ảnh</label>
                            <input type="file" name="image">
                        </div>
                        <div class="dev_deg">
                            <input class="btn btn-primary" type="submit" value="Cập nhật">
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    @include('admin.footer')
</body>

</html>