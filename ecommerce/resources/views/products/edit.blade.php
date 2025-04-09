@extends('layouts.admin')

@section('content')
    <h2 class="text-xl font-bold mb-4">Edit Product</h2>

    <form action="{{ route('admin.products.update', $product) }}" method="POST" enctype="multipart/form-data" class="space-y-4">
        @csrf
        @method('PUT')

        <div>
            <label class="block mb-1">Category</label>
            <select name="category_id" class="w-full border px-4 py-2 rounded" required>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}" {{ $product->category_id == $category->id ? 'selected' : '' }}>
                        {{ $category->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div>
            <label class="block mb-1">Product Name</label>
            <input type="text" name="name" value="{{ $product->name }}" class="w-full border px-4 py-2 rounded" required>
        </div>

        <div>
            <label class="block mb-1">Description</label>
            <textarea name="description" class="w-full border px-4 py-2 rounded" required>{{ $product->description }}</textarea>
        </div>

        <div>
            <label class="block mb-1">Price (₹)</label>
            <input type="number" step="0.01" name="price" value="{{ $product->price }}" class="w-full border px-4 py-2 rounded" required>
        </div>

        <div>
            <label class="block mb-1">Image</label>
            @if($product->image)
                <img src="{{ asset('storage/' . $product->image) }}" class="h-24 mb-2" alt="Current image">
            @endif
            <input type="file" name="image" class="w-full">
        </div>

        <button class="bg-green-500 text-white px-4 py-2 rounded">Update Product</button>
    </form>
@endsection
