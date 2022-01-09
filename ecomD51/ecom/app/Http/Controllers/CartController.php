<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    private $product;
    public function add(Request $request, $id)
    {
        $this->product = Product::find($id);
        Cart::add([
            'id' => $this->product->id,
            'name' => $this->product->name,
            'qty' => $request->qty,
            'price' => $this->product->selling_price,
            'weight' => 0,
            'options' => [
                'image'=>$this->product->image
            ]
        ]);
        return redirect('/show-cart')->with('message','product info add into the cart successfully');
    }
    
    
    
    public function show()
    {
        return view('front.cart.cart',[
            'categories'=>Category::all(),
            'cart_products'=>Cart::content()
        ]);
    }
}
