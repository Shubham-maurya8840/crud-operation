@extends('layout')

@section('content')
    <h1>Add New Product</h1>

    @if ($errors->any())
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif

    <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <label for="name">Product Name:</label><br>
        <input type="text" name="name" id="name" value="{{ old('name') }}"><br>

        <label for="description">Description:</label><br>
        <textarea name="description" id="description">{{ old('description') }}</textarea><br>

        <label for="price">Price:</label><br>
        <input type="number" name="price" id="price" step="0.01" value="{{ old('price') }}"><br><br>

        <label for="image">Image:</label><br>
        <input type="file" name="image" id="image"><br><br>

        <button type="submit">Add Product</button>
    </form>

    <a href="{{ route('products.index') }}">Back to List</a>
@endsection
