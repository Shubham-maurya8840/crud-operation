@extends('layouts.app')

@section('content')
    <h2 class="text-xl font-bold mb-4">Your Shopping Cart</h2>

    @if(session('success'))
        <div class="bg-green-100 text-green-700 p-2 mb-4 rounded">
            {{ session('success') }}
        </div>
    @endif

    @if(count($cart) > 0)
        <table class="w-full bg-white rounded shadow">
            <thead class="bg-gray-100">
                <tr>
                    <th class="px-4 py-2">Image</th>
                    <th class="px-4 py-2">Name</th>
                    <th class="px-4 py-2">Price</th>
                    <th class="px-4 py-2">Quantity</th>
                    <th class="px-4 py-2">Subtotal</th>
                    <th class="px-4 py-2">Action</th>
                </tr>
            </thead>
            <tbody>
                @php $total = 0; @endphp
                @foreach($cart as $id => $item)
                    @php $subtotal = $item['price'] * $item['quantity']; $total += $subtotal; @endphp
                    <tr>
                        <td class="border px-4 py-2">
                            @if($item['image'])
                                <img src="{{ asset('storage/' . $item['image']) }}" class="h-16">
                            @endif
                        </td>
                        <td class="border px-4 py-2">{{ $item['name'] }}</td>
                        <td class="border px-4 py-2">₹{{ $item['price'] }}</td>
                        <td class="border px-4 py-2">
                            <form action="{{ route('cart.update', $id) }}" method="POST">
                                @csrf
                                <input type="number" name="quantity" value="{{ $item['quantity'] }}" min="1" class="w-16 border px-2 py-1 rounded">
                                <button class="text-blue-500">Update</button>
                            </form>
                        </td>
                        <td class="border px-4 py-2">₹{{ $subtotal }}</td>
                        <td class="border px-4 py-2">
                            <form action="{{ route('cart.remove', $id) }}" method="POST">
                                @csrf
                                <button class="text-red-500" onclick="return confirm('Remove this item?')">Remove</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                <tr class="bg-gray-200 font-bold">
                    <td colspan="4" class="px-4 py-2 text-right">Total:</td>
                    <td colspan="2" class="px-4 py-2">₹{{ $total }}</td>
                </tr>
                <tr>
                    <td colspan="6" class="text-right px-4 py-2">
                        <a href="{{ route('checkout.index') }}" class="bg-blue-600 text-white px-4 py-2 rounded inline-block mt-4 hover:bg-blue-700">
                            Proceed to Checkout
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    @else
        <p class="text-gray-500">Your cart is empty.</p>
    @endif
@endsection
