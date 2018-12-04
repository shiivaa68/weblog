@extends('layout.layout')
@section('content')
    <header>
        <div class="container inner-header">
            <div class="intro-text">
                <div class="intro-heading">
                    پروژه شماره 1
                </div>
            </div>
        </div>
    </header>
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="section-heading">
                        {{$article->title}}
                    </h2>
                    <h3 class="section-subheading text-muted">
                        نویسنده : {{$article->user->name}}  | در تاریخ : {{Verta::instance($article->created_at)->format('Y-n-j')}} | دسته بندی : شماره 1
                    </h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-6 portfolio-item">
                    <img src="{{$article->image}}" class="img-responsive blog-detail" alt="portfolio-Pic" width="500">
                    <p>
                        {{$article->demo}}
                    </p>
                    <p>
                        {{$article->text}}
                    </p>




                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    @if(Auth::check())
                    <h3 class="section-subheading text-muted">
                        نظر خود را در رابطه با این مقاله برای ما بنویسیسد:
                    </h3>
                    @else
                        <h3 class="section-subheading text-muted">
                            برای ثبت نظر خود ابتدا لاگین کنید
                            <a class="btn btn-primary" href="{{ route('register') }}">ثبت نام</a>
                            <a class="btn btn-success" href="{{ route('login') }}">ورود اعضا</a>
                        </h3>
                    @endif
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    @if(Auth::check())
                    <form>
                        <div class="form-group">
                            <label for="exampleInputPassword1">متن نظر شما</label>
                            <textarea class="form-control" rows="5"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">ثبت</button>
                        <button type="reset" class="btn btn-danger">انصراف</button>
                    </form>
                    @endif
                </div>

            </div>

        </div>
        </div>
    </section>
    <section class="comment">
    <div class="container">
        <div class="row">


            @foreach($article->comment as $comment)
            <div class="col-md-12 col-sm-6  comments">
                <img src="/img/user.png" width="30" class="userComment">
                <h5>{{$comment->user->name}}</h5>
                <p>
                    {{ $comment->comment }}
                </p>
            </div>
            @endforeach




        </div>
    </div>
    </section>


@endsection