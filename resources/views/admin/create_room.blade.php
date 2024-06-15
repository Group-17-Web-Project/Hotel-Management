<!DOCTYPE html>
<html>

<head>

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
                    <h1 style="font-size: 30px; font-weigh:bold;">Add Rooms</h1>
                    <form action="{{url('add_room')}}" method="Post" enctype="multipart/form-data">
                        @csrf
                        <div class="dev_deg">
                            <label for="">Room Title</label>
                            <input type="text" name="title" id="">
                        </div>
                        <div class="dev_deg">
                            <label for="">Description</label>
                            <textarea name="description" id=""></textarea>
                        </div>
                        <div class="dev_deg">
                            <label for="">Price</label>
                            <input type="number" name="price" id="">
                        </div>
                        <div class="dev_deg">
                            <label for="">Room Type</label>
                            <select name="type" id="">
                                <option value="regular">Regular</option>
                                <option value="premium">Premium</option>
                                <option value="deluxe">Deluxe</option>

                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Free Wifi</label>
                            <select name="wifi" id="">
                                <option value="yes">yes</option>
                                <option value="no">No</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Bathroom</label>
                            <select name="n_bathroom" id="">
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">Bed</label>
                            <select name="n_bed" id="">
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label for="">People</label>
                            <select name="n_people" id="">
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                        <div class="dev_deg">
                            <label>Upload Image</label>
                            <input type="file" name="image">
                        </div>
                        <div class="dev_deg">
                            <input class="btn btn-primary" type="submit" value="Add Room">
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    @include('admin.footer')
</body>

</html>