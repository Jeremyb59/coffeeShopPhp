<?php

Route::set('index.php', function() {
    Index::CreateView('Index');
});
Route::set('index', function() {
    Index::CreateView('Index');
});
Route::set('about-us', function() {
    AboutUs::CreateView('AboutUs');
    // AboutUs::test();
});
Route::set('contact-us', function() {
    ContactUs::CreateView('ContactUs');
});
Route::set('login', function() {
    LoginUser::CreateView('Login');
});
Route::set('logout', function() {
    new Logoutor;
    Logoutor::CreateView('Login');
});
Route::set('categories', function() {
    Categories::CreateView('Categories');
});
Route::set('product', function() {
    Products::CreateView('Products');
});
Route::set('new-user', function() {
    NewUser::CreateView('NewUser');
});
Route::set('admin', function() {
    Admin::CreateView('Admin');
});
Route::set('edit-categories', function() {
    Admin::CreateView('editCategories');
});
Route::set('edit-products', function() {
    Admin::CreateView('editProducts');
});
Route::set('edit-news', function() {
    Admin::CreateView('editNews');
});
Route::set('cart.php', function() {
    Index::CreateView('Cart');
});
Route::set('chat', function() {
    Controller::CreateChat('chat');
});
Route::set('botman', function() {
    Controller::CreateView('botman');
});