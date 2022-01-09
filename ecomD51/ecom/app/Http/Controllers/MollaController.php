<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class MollaController extends Controller
{
    private $categories;
    private $products;

    public function index()
    {
        $this->categories = Category::all();
        $this->products = Product::orderBy('id', 'desc')->take(10)->get();

        return view('front.home.home', [
            'categories' => $this->categories,
            'products'   => $this->products,
        ]);
    }

    public function about()
    {
        return view('front.about.about');
    }

    public function contact()
    {
        return view('front.contact.contact');
    }

    public function categoryProduct($id)
    {
       $this->products = Product::where('category_id', $id)->orderBy('id','desc')->get();
        return view('front.category.category',[
            'categories'=>Category::all(),
            'product'=>$this->products
        ]);
    }

    public function productDetail()
    {
        return view('front.product.detail');
    }
}
