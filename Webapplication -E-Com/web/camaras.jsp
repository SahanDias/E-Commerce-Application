<%-- 
    Document   : camaras
    Created on : Apr 24, 2024, 11:21:11 PM
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
                     <h1 class="product_taital">camaras</h1>
                     <div class="product_section_2">
                        <div class="row">
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">CANON EOS R5</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 300,000</span></p>
                                 <div class="laptop_img"><img src="images/canon 22.jpg"></div>
                                 <p>Approx. 45MP full-frame CMOS sensor,Up to 8-stop In-Body Image Stabilizer X Optical Image Stabilizer,Up to 20 FPS + Animal Detection AF,8K DCI movie + 4K DCI 120 fps video recording capability,The EOS R5 is here with groundbreaking 8K resolution video recording</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="camaras.jsp">See More</a></div>
                                 </div>
                              </div>
                           </div>
                            <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">CANON EOS R50</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 299,000</span></p>
                                 <div class="laptop_img"><img src="images/canon EOS R50.jpg"></div>
                                 <p>Bringing together the mobile versatility of the EOS R50 mirrorless camera with a lens, shotgun microphone, and tripod grip, the EOS R50 Content Creator Kit from Canon is a starter's bundle tailored for vloggers, videographers, and visionaries who are keen to record their world in high-quality detail</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="camaras.jsp">See More</a></div>
                                 </div>
                              </div>
                           </div>
                              <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">CANON EOS RP</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 335,500</span></p>
                                 <div class="laptop_img"><img src="images/canon EOS RP.jpg"></div>
                                 <p>Impressively small despite having a large full-frame sensor, the Canon EOS RP offers flexible imaging capabilities along with a portable form factor. Featuring a high-resolution 26.2MP full-frame CMOS sensor along with a DIGIC 8 image processor</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="camaras.jsp">See More</a></div>
                                 </div>
                              </div>
                           </div>
                           
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">Sony FE 50mm f/1.2 GM Lens</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 515,500</span></p>
                                 <div class="laptop_img"><img src="images/sonyfe lence.jpg"></div>
                                 <p>-Mount Lens/Full-Frame Format,perture Range: f/1.2 to f/16,Three XA Elements,Nano AR II and Fluorine Coatings</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">Godox AD600Pro Witstro All-In-One Outdoor Flash</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 199,000</span></p>
                                 <div class="laptop_img"><img src="images/godox.jpg"></div>
                                 <P>Built-In 2.4 GHz Wireless X System,Compatible with Most TTL Systems,600Ws, 1/256 to 1/1 Power Output</P>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">GoPro HERO12 </h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 116,500</span></p>
                                 <div class="laptop_img"><img src="images/GoPro-12.jpg"></div>
                                 <p>27MP with Improved Performance,HyperSmooth 6.0 Image Stabilization,5.3K60/4K120/2.7K240 Video, 27MP Photos</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                           
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">DJI OSMO MOBILE SE</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 29,900</span></p>
                                 <div class="laptop_img"><img src="images/dji osmo.jpg"></div>
                                 <p>3-Axis Stabilization,Magnetic Design,Portable and Foldable,ActiveTrack 5.0</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">DJI Mavic 3 Pro Fly More Combo (DJI RC)</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 939,500</span></p>
                                 <div class="laptop_img"><img src="images/dji mavic.jpg"></div>
                                 <p>3-Axis Gimbal with Tri-Camera System,20MP 5.1K Wide-Angle 4/3 CMOS Hasselblad,70mm 48MP 3x Zoom Medium Telephoto Lens</p>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="buy now.jsp">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">Add To Cart</a></div>
                                 </div>
                              </div>
                           </div>
                             <div class="col-lg-4 col-sm-4">
                              <div class="lap1_main">
                                 <h4 class="laptop_text">GoPro HERO12 Black Special Bundle</h4>
                                 <p class="price_text">Price  <span style="color: #262626;">LKR 139,900</span></p>
                                 <div class="laptop_img"><img src="images/gopro hero.jpg"></div>
                                 <p>HERO12 Black Action Camera,Floating Handgrip, Head Strap Mount,Additional Enduro Battery,Carry Case</p>
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
