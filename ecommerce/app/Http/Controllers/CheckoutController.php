<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Order;

class CheckoutController extends Controller
{
    public function index()
    {
        $cart = session()->get('cart', []);
        if (empty($cart)) {
            return redirect()->route('cart.index')->with('success', 'Cart is empty');
        }
        return view('checkout.index', compact('cart'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'address' => 'required',
        ]);

        $cart = session()->get('cart', []);
        $total = 0;

        foreach ($cart as $item) {
            $total += $item['price'] * $item['quantity'];
        }

        Order::create([
            'name' => $request->name,
            'email' => $request->email,
            'address' => $request->address,
            'total' => $total,
        ]);

        session()->forget('cart');

        return redirect()->route('cart.index')->with('success', 'Order placed successfully!');
    }
}
