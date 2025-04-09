@extends('layouts.admin')

@section('content')
    <h2 class="text-xl font-bold mb-4">Add Product</h2>

    <form action="{{ route('admin.products.store') }}" method="POST" enctype="multipart/form-data" class="space-y-4">
        @csrf
        <div>
            <label>Category</label>
            <select name="category_id" class="w-full border px-4 py-2 rounded" required>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
        </div>
        <div>
            <label>Product Name</label>
            <input type="text" name="name" class="w-full border px-4 py-2 rounded" required>
        </div>
        <div>
            <label>Description</label>
            <textarea name="description" class="w-full border px-4 py-2 rounded" required></textarea>
        </div>
        <div>
            <label>Price (₹)</label>
            <input type="number" step="0.01" name="price" class="w-full border px-4 py-2 rounded" required>
        </div>
        <div>
            <label>Image</label>
            <input type="file" name="image" class="w-full">
        </div>

        <button class="bg-blue-500 text-white px-4 py-2 rounded">Save</button>
    </form>
@endsection
