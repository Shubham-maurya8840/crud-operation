@extends('layout')

@section('content')
    <h1>Edit Product</h1>

    @if ($errors->any())
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif

    <form action="{{ route('products.update', $product->id) }}" method="POST">
        @csrf
        @method('PUT')

        <label for="name">Product Name:</label><br>
        <input type="text" name="name" id="name" value="{{ $product->name }}"><br>

        <label for="description">Description:</label><br>
        <textarea name="description" id="description">{{ $product->description }}</textarea><br>

        <label for="price">Price:</label><br>
        <input type="number" name="price" id="price" step="0.01" value="{{ $product->price }}"><br><br>

        <label for="image">Image:</label><br>
        <input type="file" name="image" id="image"><br>
        @if ($product->image)
            <img src="{{ asset('storage/' . $product->image) }}" alt="Product Image" width="100"><br>
        @endif

        <button type="submit">Update Product</button>
    </form>

    <a href="{{ route('products.index') }}">Back to List</a>
@endsection
