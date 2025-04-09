@extends('layouts.admin')

@section('content')
    <h2 class="text-xl font-bold mb-4">Edit Category</h2>

    <form action="{{ route('admin.categories.update', $category) }}" method="POST" class="space-y-4">
        @csrf
        @method('PUT')
        <div>
            <label class="block mb-1">Category Name</label>
            <input type="text" name="name" value="{{ $category->name }}" class="w-full border px-4 py-2 rounded" required>
            @error('name') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
        </div>

        <button class="bg-green-500 text-white px-4 py-2 rounded">Update</button>
    </form>
@endsection
