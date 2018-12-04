<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use Intervention\Image\Facades\Image;
use Hekmatinasser\Verta\Verta;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /*
     public function __construct()
    {
        $this->middleware('auth');
    }
    */

    public function add()
    {
        $category=Category::all();
        return view('articles.add',compact('category'));
    }

    public function store(Request $request)
    {

        $this->validate(request(),[
            'title'=>'required',
            'demo'=>'required',
            'text'=>'required',
        ]);
        $article=Article::create([
            'title'=>$request['title'],
            'demo'=>$request['demo'],
            'text'=>$request['text']
        ]);
        $article->categories()->attach(request('category'));
        return redirect('/');
    }

    public function index()
    {
        $category=Category::all();
        $articles=Article::latest()->paginate(6);
        return view('welcome',compact('articles','category'));
    }

    public function detail(Article $article)
    {
        //return $article
        return view('articles.detail',compact('article'));
    }

    public function upload()
    {
        //return time();
        return view('articles.uploader');
    }
    public function uploader(Request $request)
    {
        $file=$request->file('pic');
        $filename=time()."-".$file->getClientOriginalName();
        $path=public_path('/images');
        $file->move($path,$filename);

        $img = Image::make($file->getRealPath());
        $img->resize(null, 250, function ($constraint) {
            $constraint->aspectRatio();
            $constraint->upsize();
        });
        $img->save(public_path($path."small-".$filename));

        return back();
    }
}
