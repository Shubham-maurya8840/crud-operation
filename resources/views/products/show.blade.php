@extends('layout')

@section('content')
    <h1>Product Details</h1>

    <p><strong>ID:</strong> {{ $product->id }}</p>
    <p><strong>Name:</strong> {{ $product->name }}</p>
    <p><strong>Description:</strong> {{ $product->description }}</p>
    <p><strong>Price:</strong> ${{ $product->price }}</p>
    
    @if ($product->image)
        <p><strong>Image:</strong></p>
        <img src="{{ asset('storage/' . $product->image) }}" alt="Product Image" width="100">
    @endif

    <a href="{{ route('products.index') }}">Back to List</a>
    <a href="{{ route('products.edit', $product->id) }}">Edit Product</a>

    <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline">
        @csrf
        @method('DELETE')
        <button type="submit">Delete</button>
    </form>
@endsection
