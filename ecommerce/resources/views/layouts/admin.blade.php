<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100 font-sans">

    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-white shadow-lg">
            <div class="p-6 text-xl font-bold text-blue-600 border-b">Admin Panel</div>
            <nav class="p-4 space-y-2">
                <a href="{{ route('admin.dashboard') }}" class="block px-4 py-2 rounded hover:bg-blue-100">Dashboard</a>
                <a href="{{ route('admin.categories.index') }}" class="block px-4 py-2 rounded hover:bg-blue-100">Categories</a>
                <a href="{{ route('admin.products.index') }}" class="block px-4 py-2 rounded hover:bg-blue-100">Products</a>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-6 overflow-y-auto">
            @yield('content')
        </main>
    </div>

</body>
</html>
