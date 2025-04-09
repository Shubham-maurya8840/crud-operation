@extends('layouts.app')

@section('content')
    <h2 class="text-xl font-bold mb-4">Checkout</h2>

    <form action="{{ route('checkout.store') }}" method="POST" class="space-y-4">
        @csrf

        <div>
            <label class="block mb-1">Full Name</label>
            <input type="text" name="name" class="w-full border px-4 py-2 rounded" required>
        </div>

        <div>
            <label class="block mb-1">Email</label>
            <input type="email" name="email" class="w-full border px-4 py-2 rounded" required>
        </div>

        <div>
            <label class="block mb-1">Address</label>
            <textarea name="address" class="w-full border px-4 py-2 rounded" required></textarea>
        </div>

        <button class="bg-blue-500 text-white px-4 py-2 rounded">Place Order</button>
    </form>
@endsection
