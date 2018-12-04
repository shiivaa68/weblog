<?php

namespace App\Http\Controllers;

use App\Article;
use App\Comment;
use Hekmatinasser\Verta\Verta;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function add(Article $article)
    {
//        return $article;
        Comment::create([
            'user_id'=>auth()->user()->id,
            'article_id'=>$article->id,
            'comment'=> request('comment')
        ]);
        return back();
    }
}
