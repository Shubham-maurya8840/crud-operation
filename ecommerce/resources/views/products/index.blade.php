@extends('layouts.admin')

@section('content')
    <div class="flex justify-between mb-4">
        <h2 class="text-xl font-bold">Products</h2>
        <a href="{{ route('admin.products.create') }}" class="bg-blue-500 text-white px-4 py-2 rounded">Add Product</a>
    </div>

    @if(session('success'))
        <div class="bg-green-100 text-green-800 p-2 rounded mb-4">{{ session('success') }}</div>
    @endif

    <table class="w-full bg-white rounded shadow">
        <thead class="bg-gray-100">
            <tr>
                <th class="px-4 py-2">Image</th>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">Category</th>
                <th class="px-4 py-2">Price</th>
                <th class="px-4 py-2">Action</th>
            </tr>
        </thead>
        <tbody>
            @forelse($products as $product)
                <tr>
                    <td class="border px-4 py-2">
                        @if($product->image)
                            <img src="{{ asset('storage/' . $product->image) }}" class="h-16">
                        @else
                            N/A
                        @endif
                         <!-- Add to Cart Button -->
                        <form action="{{ route('cart.add', $product->id) }}" method="POST">
                            @csrf
                            <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded">Add to Cart</button>
                        </form>
                    </td>
                    <td class="border px-4 py-2">{{ $product->name }}</td>
                    <td class="border px-4 py-2">{{ $product->category->name }}</td>
                    <td class="border px-4 py-2">₹{{ $product->price }}</td>
                    <td class="border px-4 py-2 space-x-2">
                        <a href="{{ route('admin.products.edit', $product) }}" class="text-blue-600">Edit</a>
                        <form action="{{ route('admin.products.destroy', $product) }}" method="POST" class="inline">
                            @csrf @method('DELETE')
                            <button onclick="return confirm('Delete this?')" class="text-red-600">Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td colspan="5" class="text-center py-4">No products found.</td></tr>
            @endforelse
        </tbody>
    </table>
    <div class="mt-4">{{ $products->links() }}</div>
@endsection
