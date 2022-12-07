<?php
include_once (dirname(__FILE__)).'/settings/core.php';
include_once (dirname(__FILE__)).'/controllers/cart_controller.php';
include_once (dirname(__FILE__)).'/controllers/product_controller.php';
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/custom.css">

    <title>Home</title>
  </head>
  <body>
      <div class="container-custom">
          <div class="navbar-custom">
              <div class="logo-custom">
                    Exclusive Lip Care

              </div>
              <nav>
                    <ul>
                        <?php
                        //if admin

                        if(isset($_SESSION['user_role'])){
                            $cart = get_cart_items_no($_SESSION['user_id']);
                            if($_SESSION['user_role'] == 1){

                                ?>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="view/shop.php">Shop</a></li>
                        <li><a href="view/cart.php">Cart(<?= $cart['count'] ?>)</a></li>
                        <li><a href="admin/dashboard.php">Products</a></li>
                        <li><a href="view/categories.php">Category</a></li>
                        <li><a href="login/logout.php">Logout</a></li>


                        <?php
                            }elseif($_SESSION['user_role'] == 2){
                                ?>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="view/shop.php">Shop</a></li>
                        <li><a href="view/cart.php">Cart(<?= $cart['count'] ?>)</a></li>
                        <li><a href="admin/dashboard.php">Your Products</a></li>
                        <li><a href="admin/orders.php">Your Orders</a></li>
                        <li><a href="login/logout.php">Logout</a></li>



                        <?php
                            }elseif($_SESSION['user_role'] == 3){
                                ?>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="view/shop.php">Shop</a></li>
                        <li><a href="view/cart.php">Cart(<?= $cart['count'] ?>)</a></li>

                        <li><a href="login/logout.php">Logout</a></li>

                        <?php
                            }
                        }else{
                            $ip_add = getRealIpAddr();
                            $cart = get_cart_items_no_nlog($ip_add);
                        ?>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="view/shop.php">Shop</a></li>
                        <li><a href="login/sign-up.php">Sign Up</a></li>
                        <li><a href="login/login.php">Login</a></li>
                        <li><a href="view/cart.php">Cart(<?= $cart['count'] ?>)</a></li>

                        <?php
                        }

                        ?>

                        <li class="single-product">
                  <form method="get" action="view/search-results.php">
                      <input type="text" name="term" placeholder='search..' style='width: 200px; border-radius: 25px;'>
                      <button class="btn-custom"> Search</button>

                  </form></li>

                    </ul>



              </nav>

          </div>



      </div>

      <div class="header-custom">
          <div class="container-custom">
          <div class="row-custom">
              <div class="col-2-custom texts">
                  <h1 style="color: #fff">Welcome to Exclusive Lip Care</h1>
                  <p style="color: #fff">Giving confidence to your smiles</p>
                  <a href="view/shop.php" class="btn-custom" style="margin-top: 50px">Shop Now</a>
              </div>

          </div>


      </div>
       </div>

      <!-- Featured Categories -->
      <div class="categories-custom">
          <div class="small-container">
              <h2 class="title">Categories</h2>
          <div class="row-custom">

                  <div class="col-3-custom">
                    <a href="view/shop.php?cat=1">
                    <img src="images/lip2.jpg">
                    <h4 style="text-align: center">Lip gloss</h4>
                    </a>
              </div>

              <div class="col-3-custom">
                  <a href="view/shop.php?cat=2">
                    <img src="images/balm.png">
                  <h4 style="text-align: center">Lip balm</h4>
                  </a>
              </div>
              <div class="col-3-custom">
                  <a href="view/shop.php?cat=3">
                    <img src="images/scrub1.jpg">
                  <h4 style="text-align: center">Lip scrub</h4>
                  </a>
              </div>


          </div>
          </div>

      </div>

      <!-- Featured Products -->
      <div class="small-container">
            <h2 class="title">Featured Products</h2>
            <div class="row-custom">
                <?php
                    $products = display_all_products_fxn();
                    for($i=0; $i<8; $i++){
                        ?>

                    <div class="col-4-custom">
                    <a href="<?= 'view/single-product.php?id='.$products[$i]['id'] ?>">
                        <div class="img-style"><img src="<?= $products[$i]['product_img'] ?>"></div>
                    <h4><?= $products[$i]['product_name'] ?></h4>
                    <p>GHC <?= $products[$i]['product_price'] ?></p>

                    </a>
                </div>


                <?php
                    }

                ?>

            </div>

      </div>

      <div class="footer">
          <div class="container-custom">
              <div class="row-custom">
                  <div class="footer-col-1">
                      <h3>Your lips deserve the best</h3>
                      <p>Get the most affordable lip products from us</p>


                  </div>

                  <div class="footer-col-2">
                      <img src="images/balm.png">
                      <p>Our purpose is to give you the confidence you need to smile</p>
                  </div>

                  <div class="footer-col-3">

                      <h3>Useful Links</h3>
                      <ul>
                          <li>Home</li>
                          <li>Shop</li>
                          <li>Cart</li>

                      </ul>
                  </div>

                  <div class="footer-col-4">
                      <h3>Follow Us</h3>
                      <ul>
                          <li>Facebook</li>
                          <li>Twitter</li>
                          <li>Instagram</li>

                      </ul>
                  </div>

              </div>

          </div>


      </div>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>
