<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Post;

class PostController extends Controller
{
    //
    public function index()
    {
        $posts = Post::all();

        return view('posts.index', compact(['posts']));
    }


    public function add()
    {
        return view('posts.add');
    }


    public function create(Request $request)
    {
        $post = Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => auth()->user()->id,
            'thumbnail' => $request->thumbnail
        ]);
        return redirect()->route('posts.index')->with('sukses', 'Post Berhasil di Submit');
    }



    public function delete(Posts $post)
    {
        $post->delete($post);
        return redirect('/posts')->with('sukses', 'Data Berhasil dihapus');
    }
}