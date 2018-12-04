@extends('layout.layout')
@section('content')
    <header>
        <div class="container inner-header">
            <div class="intro-text">
                <div class="intro-heading">
                    آپلودر تصویر
                </div>
            </div>
        </div>
    </header>
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-10">
                    <form method="post" action="/uploader" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputFile">تصویر مقاله</label>
                            <input type="file" name="pic" id="exampleInputFile">
                        </div>
                        <button type="submit" class="btn btn-primary">ثبت</button>
                        <button type="reset" class="btn btn-danger">انصراف</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@stop