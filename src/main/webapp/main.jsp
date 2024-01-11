<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopper Template</title>
    <link rel="stylesheet" href="../node_modules/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        header {
            display: flex;
            font-size: 25px;
            font-family: Arial;
            justify-content: space-around;
            padding: 20px;
        }

        .brand-title {
            font-size: 28px;
            font-weight: bold;
        }

        nav a {
            margin-right: 10px;
            font-size: 18px;
            text-decoration: none;
            color: black;
        }

        .sub-menu {
            display: none;
        }

        .sub-menu ul li {
            list-style-type: none;
            padding: 10px;
            margin-left: -20px;
            font-family: Arial, Helvetica, sans-serif;
        }

        nav a:hover .sub-menu {
            display: block;
            position: absolute;
            background: pink;
            margin-left: -35px;
        }

        nav a:hover .sub-menu ul li:hover {
            color: red;
        }

        .sub-menu-1 {
            display: none;
        }

        .sub-menu-1 ul li {
            list-style-type: none;
            padding: 10px;
            margin-left: -20px;
            font-family: Arial, Helvetica, sans-serif;
        }

        nav a:hover .sub-menu-1 {
            display: flex;
            position: absolute;
            background: pink;
            margin-left: -35px;
        }

        nav a:hover .sub-menu-1 ul li:hover {
            color: red;
        }

        .shop {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product {
            font-weight: bold;
            margin-bottom: 5px;
            margin-top: 10px;
        }

        .support {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .account {
            font-weight: bold;
            margin-bottom: 5px;
            margin-top: 10px;
        }

        .modal {
            font-weight: bold;
            margin-bottom: 5px;
            margin-top: 10px;
        }

        .sub-menu-3 {
            display: none;
        }

        .sub-menu-3 ul li {
            list-style-type: none;
            padding: 10px;
            margin-left: -20px;
            font-family: Arial, Helvetica, sans-serif;
        }

        nav a:hover .sub-menu-3 {
            display: block;
            position: absolute;
            background: pink;
            margin-left: 160px;
        }

        nav a:hover .sub-menu-3 ul li:hover {
            color: red;
        }

        .sub-menu-4 {
            display: none;
        }

        .sub-menu-4 ul li {
            list-style-type: none;
            padding: 10px;
            margin-left: -20px;
            font-family: Arial, Helvetica, sans-serif;
        }

        nav a:hover .sub-menu-4 {
            display: block;
            position: absolute;
            background: pink;
            margin-left: 240px;
        }


        nav a:hover .sub-menu-4 ul li:hover {
            color: red;
        }



        .shortcut-buttons a {
            margin-right: 12px;
            font-size: 18px;
            text-decoration: none;
            color: black;
        }

        article {
            background-color: black;
            text-align: center;
            padding: 10px;
            color: white;
            margin-top: 15px;
            margin-left: -10px;
            margin-right: -10px;

        }

        .bi-lightning-fill {
            color: gold;
        }

        .article-text {
            font-size: 15px;
        }

        .text-center {
            text-align: center;
            font-size: 20px;
            font-family: Arial;
        }

        .heading {
            text-align: center;
            background-color: black;
            color: white;
            font-size: 23px;
            font-family: Arial;
            font-weight: bold;
            padding: 50px;
            margin-left: -10px;
            margin-right: -10px;
        }

        .main-footer {
            background-color: black;
            color: white;
            padding: 20px;
            display: grid;
            grid-template-columns: 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr;
            margin-left: -10px;
            margin-right: -10px;
            margin-bottom: -10px;
            height: 200px;

        }

        .footer-title {
            font-weight: bold;
            font-size: 13px;
            margin-bottom: 20px;
            font-family: Arial;
        }

        .footer-brand-title {
            font-size: 25px;
            font-weight: bold;
            font-family: Arial;
            margin-bottom: 20px;
        }

        .footer-brand-title~div span {
            margin-right: 10px;
            font-size: 20px;
            color: gray;
        }

        .footer-title~span {
            display: block;
            margin-bottom: 8px;
            font-family: Arial;
            font-size: 12px;
            color: gray;
        }

        address span {
            display: block;
            margin-bottom: 8px;
            font-family: Arial;
            font-size: 12px;
            color: gray;
        }

        main {
            display: grid;
            grid-template-columns: 4fr 4fr 4fr;
            margin-top: 10px;
        }

        .women,
        .men,
        .kids {
            height: 450px;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 1;
            transition: 0.6s;
        }

        .women:hover {
            opacity: 0.7;
        }

        .men:hover {
            opacity: 0.7;
        }

        .kids:hover {
            opacity: 0.7;
        }

        .women {
            background-image: url("images/women.jpg");
            margin-left: -8px;
        }

        .men {
            background-image: url("images/men.jpg");
        }

        .kids {
            background-image: url("images/kids.jpg");
            margin-right: -8px;
        }

        .title {
            font-size: 45px;
            color: white;
            text-shadow: 3px 3px 3px black;
            margin-top: 150px;
        }

        button {
            width: 150px;
            font-size: 15px;
            margin-top: 110px;
            height: 50px;
            box-shadow: 2px 2px 2px black;
            font-weight: bold;
        }

        .features {
            margin-top: 5px;
            padding: 20px;
            display: grid;
            grid-template-columns: 3fr 3fr 3fr 3fr;
            font-family: Arial;
        }

        .features .bi {
            color: red;
            margin-right: 10px;
        }

        .features div {
            margin-bottom: 10px;
            margin-left: 10px;
            font-size: 13px;
            font-weight: bold;
        }

        .feature-text {
            color: gray;
        }

        #horizontal-line {
            width: 1150px;
            height: 2px;
            background-color: gray;
            margin-bottom: 40px;
            margin-left: 50px;
        }

        .site-main {
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            margin-top: 10px;
        }

        .site-main-title {
            font-size: 40px;
            font-family: Arial;
            font-family: bold;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .site-main-subtitle {
            color: gray;
        }

        .site-main-text {
            font-family: Arial;
            width: 500px;
            margin-top: 20px;
            color: grey;
        }

        .part-image {
            display: grid;
            grid-template-columns: 4fr 8fr;
            grid-gap: 20px;
            margin-bottom: 30px;
        }

        .bags,
        .shirts {
            height: 400px;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;

            transition: 0.6s;
        }

        .part1:hover .bags {
            transform: scale(1.03);
        }

        .part2:hover .shirts {
            transform: scale(1.03);
        }

        .bags {
            background-image: url(images/bag.jpg);
            margin-left: 60px;
        }

        .shirts {
            background-image: url(images/shirt.jpg);
            margin-right: 60px;
            position: relative;

        }

        .bags:hover #part1 {
            transform: scale(1.03);
        }

        .shirts:hover #part2 {
            transform: scale(1.03);
        }


        .bags:hover {
            opacity: 0.7;
        }

        .shirts:hover {
            opacity: 0.7;
        }

        .dress:hover {
            opacity: 0.7;
        }

        .sheat:hover {
            opacity: 0.7;

        }

        .title-1 {
            font-size: 20px;
            color: white;
            margin-bottom: -70px;
        }

        .titles-1 {
            font-size: 20px;
            color: white;
            margin-bottom: -70px;
            margin-right: 450px;
        }

        .button {
            width: 150px;
            font-size: 15px;
        }

        .part-image2 {
            display: grid;
            grid-template-columns: 8fr 4fr;
            grid-gap: 20px;
            margin-bottom: 30px;
        }

        .dress,
        .sheat {
            height: 400px;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 1;
            transition: 0.6s;
        }

        .part3:hover .dress {
            transform: scale(1.03);
        }

        .part4:hover .sheat {
            transform: scale(1.03);
        }

        .dress:hover #part3 {
            transform: scale(1.03);
        }

        .sheat:hover #part4 {
            transform: scale(1.03);
        }

        .dress {
            background-image: url(images/basic.webp);
            margin-left: 60px;
        }

        .sheat {
            background-image: url(images/sweat.jpg);
            margin-right: 60px;

        }

        .title-2 {
            font-size: 30px;
            color: white;
            margin-bottom: -70px;
        }

        .titles-2 {
            font-size: 30px;
            color: white;
            margin-bottom: -70px;
            margin-left: -5px;
            margin-right: 280px;
        }

        .button-2 {
            width: 150px;
            font-size: 15px;
        }

        .site {
            font-size: 30px;
            font-family: Arial;
            font-weight: bold;
            text-align: center;
            margin-top: 80px;
        }

        .site-second {
            display: grid;
            grid-template-columns: 4fr 4fr 4fr;
            width: 200px;
            text-align: center;
            margin-left: 510px;
            padding: 20px;
        }

        .offer {
            background-color: rgb(240, 109, 109);
            color: white;
            width: 70px;
            height: 70px;
            border-radius: 70px;
            font-size: 25px;
            text-align: center;
            position: absolute;
            top: 20px;
            right: 20px;
        }


        .count {
            position: absolute;
            top: -10px;
            right: -8px;
            background-color: rgb(240, 109, 109);
            border-radius: 10px;
            display: inline-block;
            padding: 2px;
            width: 12px;
            height: 14px;
            margin-left: 120px;
        }

        #cart {
            position: relative;
        }


        .card {
            width: 220px;
            padding: 15px;
            margin: 10px;
        }

        .card-header img {
            width: 100%;
            height: 270px;
            position: absolute;
            transition: 0.6s ease;
        }



        .card-header #img1:hover {
            opacity: 0;
        }

        .card-header #img2:hover {
            opacity: 0;
        }

        .card-header #img3:hover {
            opacity: 0;
        }

        .card-header #img4:hover {
            opacity: 0;
        }

        .card-header #img5:hover {
            opacity: 0;
        }

        .card-header #img6:hover {
            opacity: 0;
        }

        .card-header #img7:hover {
            opacity: 0;
        }

        .card-header #img8:hover {
            opacity: 0;
        }

        .card-header {
            height: 300px;
            position: relative;
        }

        .head {
            color: grey;
            font-size: 15px;
        }

        .card-footer {
            margin-top: -5px;
            font-weight: bold;
        }

        .head2 {
            font-size: 20px;
            font-weight: bold;
        }

        .cards {
            display: flex;
            margin-left: 100px;
            margin-top: 30px;
        }

        .red {
            color: red;
            font-weight: bold;
        }

        .new {
            background-color: white;
            color: black;
            width: 60px;
            height: 20px;
            font-size: 16px;
            text-align: center;
            position: absolute;
            top: 20px;
            right: 165px;
            z-index: 1;
        }

        .sale {
            background-color: rgb(65, 62, 62);
            color: white;
            width: 60px;
            height: 20px;
            font-size: 16px;
            text-align: center;
            position: absolute;
            top: 20px;
            right: 158px;
            z-index: 1;
        }

        .dis {
            font-size: 15px;
            font-family: Arial;
            font-weight: bold;
            text-align: center;
            margin-top: 80px;
        }

        #horizontal {
            width: 150px;
            height: 2px;
            background-color: gray;
            margin-top: 4px;
            margin-bottom: 40px;
            margin-left: 550px;
        }

        .mainpic {
            position: relative;
            background-size: cover;
            width: 100%;
        }

        .mainpic img {
            width: 1300px;
            height: 500px;
            margin-left: -10px;
            margin-right: -100px;
            margin-bottom: 20px;
            margin-top: 50px;
        }

        .maintitle {
            position: absolute;
            top: 0;
            color: white;
            padding: 20px;
        }

        .maintitle .mainpicbutton {
            margin-top: 10px;
            margin-left: 150px;
        }

        .maintitle .mainpictitle {
            font-size: 35px;
            margin-top: 150px;
            margin-left: 140px;
        }

        .site-sub {
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            margin-top: -5px;
        }

        .site-sub-subtitle {
            font-size: 15px;
            color: grey;
            font-family: arial;
            padding: 15px;
            font-weight: bold;
        }

        .site-sub-title {
            font-size: 30px;
            font-family: arial;
            font-weight: bold;
        }

        .main-sub {
            background-color: rgb(230, 201, 206);
            padding: 10px;
            display: flex;
            grid-template-columns: 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr;
            margin-left: -10px;
            margin-right: -10px;
            margin-bottom: -10px;
            height: 400px;

        }

        .main-sub img {
            width: 170px;
            height: 200px;
            padding-left: -20px;
            margin-top: 80px;
            margin-left: 20px;
        }

        .mainsubimg {
            margin-left: 12px;
        }

        .mainheading1 {
            text-align: center;
            background-color: rgb(230, 201, 206);
            color: black;
            font-size: 35px;
            font-family: Arial;
            font-weight: bold;
            padding: 100px;
            padding-bottom: 15px;
            margin-left: -10px;
            margin-right: -10px;
            margin-top: 30px;

        }

        .mainheading2 {
            text-align: center;
            background-color: rgb(230, 201, 206);
            color: rgb(65, 61, 61);
            font-size: 23px;
            font-family: Arial;
            margin-left: -10px;
            margin-right: -10px;
        }

        .main-brand {
            background-color: rgb(230, 201, 206);
            padding: 10px;
            display: flex;
            grid-template-columns: 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr;
            margin-left: -10px;
            margin-right: -10px;
            margin-bottom: -10px;
            height: 60px;

        }

        .main-brand img {
            width: 120px;
            height: 180px;
            padding-left: -20px;
            margin-top: -130px;
            margin-left: 51px;
            padding-top: 5px;
        }

        .launch-time {
            display: flex;
            margin-top: -40px;
            margin-bottom: 15px;
            margin-left: 150px;
        }

        .launch-time div {
            flex-basis: 100px;
        }

        .launch-time div p {
            font-size: 40px;
            margin-bottom: 5px;
            margin-left: 5px;
        }

        .cards1 {
            display: flex;
            margin-bottom: 100px;
        }

        .card1 {
            width: 420px;
            padding: 5px;
            margin: 10px;
            box-shadow:
                inset 20px 20px 20px rgba(0, 0, 0, .05),
                5px 25px 20px rgba(0, 0, 0, .05),
                5px 20px 30px rgba(0, 0, 0, .05),
                inset -20px -20px 25px rgba(255, 255, 255, .05);
        }

        .card-header1 img {
            width: 70px;
            height: 70px;
            padding: 20px;
        }

        .card-header1 {
            height: 160px;
            display: flex;
        }

        .card-body1 {
            height: 100px;
            text-align: center;
        }

        .card-body1 p {
            margin-top: -50px;
            align-items: center;
            text-align: justify;
            padding: 20px;
        }

        .card-title1 {
            font-size: 25px;
            margin-bottom: 10px;
        }

        #rating {
            color: goldenrod;
        }

        .maintitle1 {
            margin-top: -30px;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .main1 {
            margin-top: 25px;
            color: gray;
        }

        .card-footer1 p {
            margin-top: 20px;
            padding: 20px;
        }
    </style>




    <script>

        function bodyload() {
            var countTime = new Date("Dec 15, 2023 00:00:00").getTime();
            var x = setInterval(() => {
                var now = new Date().getTime()
                var distance = countTime - now;

                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / (1000));

                document.getElementById("days").innerHTML = days;
                document.getElementById("hours").innerHTML = hours;
                document.getElementById("minutes").innerHTML = minutes;
                document.getElementById("seconds").innerHTML = seconds;

            }, 1000);
        }
    </script>
</head>

<body onload="bodyload()">
    <header>
        <div>
            <span class="brand-title">Shopper.</span>
        </div>
        <nav>
            <a href="#">Home
                <div class="sub-menu">
                    <ul>
                        <li>Default</li>
                        <li>Classic</li>
                        <li>Fashion</li>
                        <li>Boxed</li>
                        <li>Asymmetric</li>
                        <li>Sidenav</li>
                        <li>Simple</li>
                        <li>Landing</li>
                    </ul>
                </div>
            </a>
            <a href="#">Catalog</a>
            <a href="#">Shop
                <div class="sub-menu-1">
                    <ul>
                        <li class="shop">Shop</li>
                        <li>Default</li>
                        <li>Collapse</li>
                        <li>Simple</li>
                        <li>Masonry</li>
                        <li class="product">Product</li>
                        <li>Default</li>
                        <li>Images Left</li>
                        <li>Images Grid</li>
                        <li>Image Slider</li>
                        <li>Images Stacked</li>
                    </ul>

                    <ul>
                        <li class="support">Support</li>
                        <li>Shopping Cart</li>
                        <li>Checkout</li>
                        <li>Order Completed</li>
                        <li>Shipping & Returns</li>
                        <li class="account">Account</li>
                        <li>Order</li>
                        <li>Orders</li>
                        <li>Wishlist</li>
                        <li>Personal Info</li>
                        <li>Addresses</li>
                        <li>Addresses: New</li>
                    </ul>

                    <ul>
                        <li>Payment</li>
                        <li>Payment: New</li>
                        <li>Payment: Choose</li>
                        <li>Auth</li>
                        <li class="modal">Modals</li>
                        <li>Newsletter: Horizontal</li>
                        <li>Newsletter: Vertical</li>
                        <li>Product</li>
                        <li>Search</li>
                        <li>Shopping Cart</li>
                        <li>Size Chart</li>
                        <li>Wait List</li>
                    </ul>
                </div>
            </a>
            <a href="#">Pages
                <div class="sub-menu-3">
                    <ul>
                        <li>About</li>
                        <li>Contact Us</li>
                        <li>Store Locator</li>
                        <li>FAQ</li>
                        <li>Coming Soon</li>
                        <li>404</li>
                    </ul>
                </div>
            </a>
            <a href="#">Blog
                <div class="sub-menu-4">
                    <ul>
                        <li>Blob</li>
                        <li>Blob Post</li>
                    </ul>
                </div>
            </a>
            <a href="#">Docs</a>
        </nav>
        <div class="shortcut-buttons">
            <a href="#" class="bi bi-search"></a>
            <a href="#" class="bi bi-person"></a>
            <a href="#" class="bi bi-heart"></a>
            <a href="#" class="bi bi-cart3" id="cart"><span class="count">4</span></a>
        </div>
    </header>

    <article>
        <span class="bi bi-lightning-fill"></span>
        <span class="article-text">HAPPY HOLIDAY DELLS ON EVERYTHING</span>
        <span class="bi bi-lightning-fill"></span>
    </article>

    <section>
        <main>
            <div class="women">
                <div>
                    <h1 class="title">Women</h1>
                    <button>Shop Women<span class="bi bi-arrow-right" id="bi"></span></button>
                </div>
            </div>

            <div class="men">
                <div>
                    <h1 class="title">Men</h1>
                    <button>Shop Men<span class="bi bi-arrow-right" id="bi"></span></button>
                </div>
            </div>

            <div class="kids">
                <div>
                    <h1 class="title">Kids</h1>
                    <button>Shop Kids<span class="bi bi-arrow-right" id="bi"></span></button>
                </div>
            </div>
        </main>

        <div class="features">

            <div>
                <div>
                    <span class="bi bi-truck"></span>FREE SHIPPING
                </div>
                <div class="feature-text">
                    From all oders over $100
                </div>
            </div>

            <div>
                <div>
                    <span class="bi bi-arrow-repeat"></span>FREE RETURN
                </div>
                <div class="feature-text">
                    Return money within 30 days
                </div>
            </div>

            <div>
                <div>
                    <span class="bi bi-lock"></span>SECURE SHOPPING
                </div>
                <div class="feature-text">
                    You are in safe hands
                </div>
            </div>

            <div>
                <div>
                    <span class="bi bi-tag"></span>OVER 10,000 STYLES
                </div>
                <div class="feature-text">
                    We have everything you needed
                </div>
            </div>
        </div>

        <div id="horizontal-line"></div>

        <div class="site-main">
            <div>
                <div class="site-main-subtitle">NEW COLLECTION</div>
                <div class="site-main-title">Best Picks 2023</div>
                <div class="site-main-text">Appear, dry there darkness they're seas, dry waters thing fly midst. Beast,
                    above fly brought Very green.</div>
            </div>
        </div>

        <div class="part-image">
            <div class="part1">
                <div class="bags">
                    <div>
                        <h1 class="title-1">BAGS COLLECTION</h1>
                        <button class="button" id="part1">Shop Now<span class="bi bi-arrow-right"></span></button>
                    </div>
                </div>
            </div>

            <div class="part2">
                <div class="shirts">
                    <div class="offer">save 30%</div>
                    <div>
                        <h1 class="titles-1">PRINTED MENS SHIRT</h1>
                        <button class="button" id="part2">Shop Now<span class="bi bi-arrow-right"></span></button>
                    </div>
                </div>
            </div>

        </div>

        <div class="part-image2">
            <div class="part3">
                <div class="dress">
                    <div>
                        <h1 class="titles-2">Basic Women's Dress</h1>
                        <button class="button-2" id="part3">Shop Now<span class="bi bi-arrow-right"></span></button>
                    </div>
                </div>
            </div>

            <div class="part4">
                <div class="sheat">
                    <div>
                        <h1 class="title-2">SweatShirts</h1>
                        <button class="button-2" id="part4">Shop Now<span class="bi bi-arrow-right"></span></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="site">Top Month Sellers</div>

        <div class="site-second">
            <div>Women</div>
            <div>Men</div>
            <div>Kids</div>
        </div>

        <div class="cards">

            <div class="card">
                <div class="card-header">
                    <div class="new">NEW</div>
                    <img src="images/sandal1.jpg">
                    <img src="images/sandal.jpg" alt="" id="img2">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Shoes</div>
                        <div class="head2">Leather mid-heel Sandals</div>
                        <div class="head">$129.00</div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <img src="images/womenprinted1.jpg">
                    <img src="images/womenprinted.jpg" alt="" id="img2">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Dresses</div>
                        <div class="head2">Cotton floral print Dress</div>
                        <div class="head">$40.00</div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <div class="sale">SALES</div>
                    <img src="images/shoes1.jpg">
                    <img src="images/shoes.webp" alt="" id="img3">

                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Shoes</div>
                        <div class="head2">Leather Sneakers</div>
                        <div class="head"><strike>$85.00</strike> <span class="red">$85.00</span></div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <img src="images/sleeveless1.webp">
                    <img src="images/sleeveless.webp" alt="" id="img4">

                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Shoes</div>
                        <div class="head2">Leather mid-heel Sandals</div>
                        <div class="head">$129.00</div>
                    </div>
                </div>
            </div>

        </div>



        <div class="cards">
            <div class="card">
                <div class="card-header">
                    <img src="images/floral1.jpg">
                    <img src="images/floral.jpg" alt="" id="img5">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Dresses</div>
                        <div class="head2">Floral print midi Dress</div>
                        <div class="head">$50.00</div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <div class="sale">SALES</div>
                    <img src="images/bodybag1.jpg">
                    <img src="images/bodybag.jpg" alt="" id="img6">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Bags</div>
                        <div class="head2">Suede cross body Bag</div>
                        <div class="head"><strike>$79.00</strike> <span class="red">$79.00</span></div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <img src="images/lineshirt1.jpg">
                    <img src="images/lineshirt.jpg" alt="" id="img7">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Skirts</div>
                        <div class="head2">Printed A-line Skirt</div>
                        <div class="head">$79.00</div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <div class="new">NEW</div>
                    <img src="images/strappy1.jpg">
                    <img src="images/strappy.jpg" alt="" id="img8">
                </div>

                <div class="card-footer">
                    <div>
                        <div class="head">Shoes</div>
                        <div class="head2">Heel strappy Sandals</div>
                        <div class="head">$90.00</div>
                    </div>
                </div>
            </div>

        </div>

        <div class="dis">
            <div class="disname">Discover More</div>
        </div>

        <div id="horizontal"></div>

        <div class="mainpic">
            <img src="images/mainpic.jpg">
            <div class="maintitle">

                <h1 class="mainpictitle">GET 50% FROM<br>SUMMER COLLECTION</h1>

                <div class="launch-time">

                    <div>
                        <p id="days">00</p>
                        <span>DAYS</span>
                    </div>

                    <div>
                        <p id="hours">00</p>
                        <span>HOURS</span>
                    </div>

                    <div>
                        <p id="minutes">00</p>
                        <span>MINUTES</span>
                    </div>

                    <div>
                        <p id="seconds">00</p>
                        <span>SECONDS</span>
                    </div>

                </div>
                <button class="mainpicbutton">Shop Now<span class="bi bi-arrow-right"></span></button>

            </div>
        </div>


        <div class="site-sub">
            <div>
                <div class="site-sub-subtitle">WHAT BUYERS SAY</div>
                <div class="site-sub-title">Latest buyers Reviews</div>
            </div>
        </div>


        <div class="cards1">
            <div class="card1">
                <div class="card-header1">
                    <img src="images/block1.jpg">
                    <div>
                        <p class="main1">Dress</p><br>
                        <p class="maintitle1">Low Top Sneakers</p>

                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                    </div>
                </div>
                <div class="card-body1">
                    <p>From creepeth said moved given divide make multiple of him shall itself also above second doesn't
                        unto created saying land herb sea midst night wherein</p>
                </div>
                <div class="card-footer1">

                    <p>Logan Edward, 01 Jan 2019</p>

                </div>
            </div>

            <div class="card1">
                <div class="card-header1">
                    <img src="images/block2.jpg">
                    <div>
                        <p class="main1">Dresses</p><br>
                        <p class="maintitle1">Cotton Print Dress</p>

                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star" id="rating"></span>
                    </div>
                </div>
                <div class="card-body1">
                    <p>God every fill great replenish darkness unto.Very open. Likeness their that light. Given under
                        image
                        to. Subdue of shall cattle day fish form saw spirit and given stars , us you whales may, land,
                        saw
                        fill unto.</p>
                </div>
                <div class="card-footer1">

                    <p>Jane Jefferson, 29 May 2019</p>

                </div>
            </div>

            <div class="card1">
                <div class="card-header1">
                    <img src="images/block3.jpg">
                    <div>
                        <p class="main1">T- Shirts</p><br>
                        <p class="maintitle1">Oversized Print T-Shirt</p>

                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star" id="rating"></span>
                        <span class="bi bi-star" id="rating"></span>
                    </div>
                </div>
                <div class="card-body1">
                    <p>Fill his waters wherein signs likeness waters.Second light gathered apper sixth fourth, seasons
                        behold creeping female</p>
                </div>
                <div class="card-footer1">

                    <p>Darrel Baker, 18 May 2019</p>

                </div>
            </div>

            <div class="card1">
                <div class="card-header1">
                    <img src="images/block4.jpg">
                    <div>
                        <p class="main1">Bags and Accessories</p><br>
                        <p class="maintitle1">Suede cross body Bag</p>

                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star-fill" id="rating"></span>
                        <span class="bi bi-star" id="rating"></span>
                    </div>
                </div>
                <div class="card-body1">
                    <p>God every fill great replenish darkness unto.Very open. Likeness their that light. Given under
                        image
                        to. Subdue of shall cattle day fish form saw spirit and given stars</p>
                </div>
                <div class="card-footer1">

                    <p>Logan Edward, 01 Jan 2019</p>

                </div>
            </div>
        </div>


        <div class="mainheading1">@shopper</div>
        <div class="mainheading2">Appear, dry there darkness they're seas, dry waters.</div>
        <div class="main-sub">

            <div>
                <div class="mainsubimg">
                    <img src="images/shop1.jpg">
                </div>
            </div>


            <div>
                <div class="mainsubimg">
                    <img src="images/shop2.jpg">
                </div>
            </div>


            <div>
                <div class="mainsubimg">
                    <img src="images/shop3.jpg">
                </div>
            </div>


            <div>
                <div class="mainsubimg">
                    <img src="images/shop4.jpg">
                </div>
            </div>


            <div>
                <div class="mainsubimg">
                    <img src="images/shop5.jpg">
                </div>
            </div>

            <div>
                <div class="mainsubimg">
                    <img src="images/shop6.jpg">
                </div>
            </div>

        </div>


        <div class="main-brand">

            <div>
                <div class="mainbrandimg">
                    <img src="images/brand1.svg">
                </div>
            </div>


            <div>
                <div class="mainbrandimg">
                    <img src="images/brand2.svg">
                </div>
            </div>


            <div>
                <div class="mainbrandimg">
                    <img src="images/brand3.svg">
                </div>
            </div>


            <div>
                <div class="mainbrandimg">
                    <img src="images/brand4.svg">
                </div>
            </div>


            <div>
                <div class="mainbrandimg">
                    <img src="images/brand5.svg">
                </div>
            </div>

            <div>
                <div class="mainbrandimg">
                    <img src="images/brand6.svg">
                </div>
            </div>

            <div>
                <div class="mainbrandimg">
                    <img src="images/brand7.svg">
                </div>
            </div>
        </div>








    </section>

    <footer>
        <div class="heading">Want style Ideas and Treats?</div>
        <div class="main-footer">
            <div>
                <div class="footer-brand-title">Shopper.</div>
                <div>
                    <span class="bi bi-facebook"></span>
                    <span class="bi bi-youtube"></span>
                    <span class="bi bi-twitter"></span>
                    <span class="bi bi-instagram"></span>
                </div>
            </div>
            <div>
                <div class="footer-title">SUPPORT</div>

                <span>Contact Us</span>
                <span>FAQs</span>
                <span>Size Guide</span>
                <span>Shipping & Returns</span>

            </div>
            <div>
                <div class="footer-title">SHOP</div>

                <span>Men's Shopping</span>
                <span>Women's Shopping</span>
                <span>Kid's Shopping</span>
                <span>Discount</span>

            </div>
            <div>
                <div class="footer-title">COMPANY</div>

                <span>Our Story</span>
                <span>Careers</span>
                <span>Terms & Conditions</span>
                <span>Privacy & Cookies Policy</span>

            </div>
            <div>
                <div class="footer-title">CONTACK</div>
                <address>
                    <span>1-202-555-0105</span>
                    <span>1-202-555-0106</span>
                    <span>help@shopper.com</span>
                </address>
            </div>
        </div>
    </footer>
</body>

</html>