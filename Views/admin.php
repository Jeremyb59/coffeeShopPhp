<?php
include("header.php");
if ($_SESSION['permission'] != 'admin') {
    new Redirector('index');
}
?>
<div class="container">
    <div class="row justify-content-center">
        <h1>ADMIN PANEL</h1>
    </div>
    <div class="row">
        <div class="col text-center">
            <h3 class="mt-5 text-center">
                Product Controls
            </h3>
            <a href="new-product" class="btn btn-outline-primary btn-block">
                Add Product
            </a>
            <a href="edit-products" class="btn btn-outline-primary btn-block">
                Edit Products
            </a>
            <a href="edit-categories" class="btn btn-outline-primary btn-block">
                Edit Categories
            </a>
        </div>
        <div class="col text-center">
            <h3 class="mt-5 text-center">
                News & Company
            </h3>
            <a href="orders" class="btn btn-outline-primary btn-block">
                View Orders
            </a>
            <a href="edit-news" class="btn btn-outline-primary btn-block">
                Edit News
            </a>
            <a href="edit-company" class="btn btn-outline-primary btn-block">
                Edit Company's Information
            </a>
        </div>
    </div>
</div>