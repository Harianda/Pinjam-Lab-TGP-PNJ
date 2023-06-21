<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="icon" type="image/png" href="vendor/img/logo.svg">
    @include('includes.head')
    @yield('cssnya')
</head>

<body>
    @include('includes.header')

    @yield('content')

    @include('includes.footer')
    @yield('scripts')
</body>

</html>