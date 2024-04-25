<%-- 
    Document   : headphones
    Created on : Apr 24, 2024, 11:23:15 PM
    Author     : Hashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Fashion</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   <body>
      <!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <div class="container">
            <div class="header_section_top">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="custom_menu">
                        <ul>
                           <li><a href="#">Best Sellers</a></li>
                           <li><a href="#">Gift Ideas</a></li>
                           <li><a href="#">New Releases</a></li>
                           <li><a href="#">Today's Deals</a></li>
                           <li><a href="#">Customer Service</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header top section start -->
         <!-- logo section start -->
         <div class="logo_section">
            <div class="container">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="logo"><a href="index.html"><img src="images/logo.png"></a></div>
                  </div>
               </div>
            </div>
         </div>
         <!-- logo section end -->
         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <a href="index.html">Home</a>
                     <a href="fashion.html">Fashion</a>
                     <a href="electronic.html">Electronic</a>
                     <a href="jewellery.html">Jewellery</a>
                  </div>
                  <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
                  <div class="dropdown">
                     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Category 
                     </button>
                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                     </div>
                  </div>
                  <div class="main">
                     <!-- Another variation with a button -->
                     <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search this blog">
                        <div class="input-group-append">
                           <button class="btn btn-secondary" type="button" style="background-color: #f26522; border-color:#f26522 ">
                           <i class="fa fa-search"></i>
                           </button>
                        </div>
                     </div>
                  </div>
                  <div class="header_box">
                     <div class="lang_box ">
                        <a href="#" title="Language" class="nav-link" data-toggle="dropdown" aria-expanded="true">
                        <img src="images/flag-uk.png" alt="flag" class="mr-2 " title="United Kingdom"> English <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu ">
                           <a href="#" class="dropdown-item">
                           <img src="images/flag-france.png" class="mr-2" alt="flag">
                           French
                           </a>
                        </div>
                     </div>
                     <div class="login_menu">
                        <ul>
                           <li><a href="#">
                              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                              <span class="padding_10">Cart</span></a>
                           </li>
                           <li><a href="#">
                              <i class="fa fa-user" aria-hidden="true"></i>
                              <span class="padding_10">Cart</span></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                  </a>
                  <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                  </a>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->
      <!-- product section start -->
      <div class="product_section">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h1 class="product_taital">LAPTOPS</h1>
                     <div class="product_section_2">
                        <div class="row">
                           <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                  <h4 class="laptop_text">ROSE GOLD HP LAPTOP </h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 204,596</span></p>
                                 <div class="laptop_img"><img src="images/Rose Gold HP Laptop.jpg"></div>
                                 <p>Rose Gold HP Laptop 15.6" HD AMD Quad Core Ryzen 5 256GB SSD 8GB RAM Pink New </p>                                               
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="seemore.jsp">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">HP SPECTRE *360</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 499,000</span></p>
                                 <div class="laptop_img"><img src="images/HP Spectre x360.jpg"></div>
                                 <p>Commercial Notebooks,Consumer Notebooks,Core i7 Laptops,Laptops & Desktops,Laptops &Tabs,Touch Laptops</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">HP SPECTRE FOLIO</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 210,000</span></p>
                                 <div class="laptop_img"><img src="images/HP Spectre Folio.jpg"></div>
                                 <p>Windows 10 Home 64,8th Generation Intel® Core™ i7 processor,Intel® UHD Graphics 615,8 GB memory; 256 GB SSD storage</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                           
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap 4</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 379,900</span></p>
                                 <div class="laptop_img"><img src="images/macbook air pro.jpg"></div>
                                 <p>Apple M2 chip with 8‑core CPU, 10‑core GPU, 16‑core Neural Engine,8GB unified memory,15.3-inch Liquid Retina display with True Tone,MagSafe 3 charging port,Backlit Magic Keyboard with Touch ID,1080p FaceTime HD camera</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap 5</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 339,900</span></p>
                                 <div class="laptop_img"><img src="images/macbook air.jpg"></div>
                                 <P>Apple M2 chip with 8‑core CPU, 8‑core GPU, 16‑core Neural Engine,8GB unified memory,30W USB-C Power Adapter</P>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap 6</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 1,189,000</span></p>
                                 <div class="laptop_img"><img src="images/macbook pro.jpg"></div>
                                 <p>The new M2 chip makes the 13‑inch MacBook Pro more capable than ever. The same compact design supports up to 20 hours of battery life1 and an active cooling system to sustain enhanced performance,MBP 16.2-inch / M3 Pro / 12C CPU / 18C GPU / 18GB / 512GB</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                           
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap7</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 175,000</span></p>
                                 <div class="laptop_img"><img src="images/i12 pro max.jpg"></div>
                                 <p>Width: 3.07 inches (78.1 mm),Height: 6.33 inches (160.8 mm),Depth: 0.29 inch (7.4 mm),Weight: 8.03 ounces (228 grams),HDR display,Wide color (P3)</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap 8</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 339,900</span></p>
                                 <div class="laptop_img"><img src="images/i14 pro.jpg"></div>
                                 <p>Width: 3.05 inches (77.6 mm),Height: 6.33 inches (160.7 mm),Depth: 0.31 inch (7.85 mm),Weight: 8.47 ounces (240 grams),ProMotion technology with adaptive refresh rates up to 120Hz,Fingerprint-resistant oleophobic coating,Support for display of multiple languages and characters simultaneously</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">lap 9</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 474,900</span></p>
                                 <div class="laptop_img"><img src="images/i15.jpg"></div>
                                 <p>I15 PROMAX Unlocked android Phone 2023 Android 13 cell phone with Dynamic Island Titanium Design 8GB+512GB Mobile Phones 6.7“ HD Screen 108MP+48MP Camera 6800 mAh Dual SIM Smart phone,5G DUAL SIM CELL PHONE - I15 PROMAX supports 5G/4G/3G/2G cellular, much wider frequency bands,Get incredible framing flexibility with lenses</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                          
                                 
                             <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="footer_logo"><a href="index.html"><img src="images/footer-logo.png"></a></div>
            <div class="input_bt">
               <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
               <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
            </div>
            <div class="footer_menu">
               <ul>
                  <li><a href="#">Best Sellers</a></li>
                  <li><a href="#">Gift Ideas</a></li>
                  <li><a href="#">New Releases</a></li>
                  <li><a href="#">Today's Deals</a></li>
                  <li><a href="#">Customer Service</a></li>
               </ul>
            </div>
            <div class="location_main">Help Line  Number : <a href="#">+1 1800 1200 1200</a></div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">© 2020 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
         }
      </script>
    </body>
</html>
