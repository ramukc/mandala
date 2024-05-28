<?php
require 'includes/conn.php';
require 'includes/is_added_to_cart.php';
session_start();
require "./includes/head.php";

?>

<?php
$query = 'SELECT * FROM `products`';

$result = mysqli_query($con, $query);

$sum = 0;

while ($row = mysqli_fetch_array($result)) {
    $sum++;
}


?>


<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item">
                        <h2>Explore all the products</h2>
                        <h6>Buying a hand-painted mandala is not just acquiring art; <br> it's embracing a piece of someone's journey.</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section >
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="left_sidebar_area">
                    <aside class="left_widgets p_filter_widgets">
                        <div class="l_w_title">
                            <h3 style="padding-top: 50px">Available Categories</h3>
                        </div>
                        <div class="widgets_inner">
                            <ul class="list">
                                <li>
                                <a href="#">Black and White</a>
                                    <span></span>
                                </li>
                                
                                <li>
                                    <a href="#">Alphabetic</a>
                                    <span></span>
                                </li>
                                <li>
                                    <a href="#">Gods</a>
                                    <span></span>
                                </li>
                                
                                <li>
                                    <a href="#">Bookmark</a>
                                    <span></span>
                                </li>
                                <li>
                                    <a href="#">Notebook</a>
                                    <span></span>
                                </li>
                                <li>
                                    <a href="#">Name</a>
                                    <span></span>
                                </li>
                                <li>
                                    <a href="#">Flower</a>
                                    <span></span>
                                </li>
                                <li>
                                    <a href="#">Shapes</a>
                                    <span></span>
                                </li>
                            </ul>
                        </div>
                    </aside>
                   
                </div>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product_top_bar d-flex justify-content-between align-items-center">
                            <div class="single_product_menu">
                                <p style="padding-top: 50px"><span><?php echo $sum ?> </span> Product Found</p>
                            </div>
                            
                           
                        </div>
                    </div>
                </div>
                <div class="row align-items-center latest_product_inner">

                <?php
                    $result = mysqli_query($con, $query);

                    while ($row = mysqli_fetch_array($result)) {
                        echo '<div class="col-lg-4 col-sm-6">
                                <div class="single_product_item">
                                    <img width="200px" src="img/product/'.$row['image'].'" alt="djwij" />
                                    <div class="single_product_text">
                                        <h4>'. $row['title'] .'</h4>
                                        <h3>Rs. '. $row['price'] .'</h3>';
                                        if(!check_if_added_to_cart($row['id'])){
                                           echo '<a href="scripts/cart_add.php?id='.$row['id'].'&qty=1" class="add_cart">+ add to cart<i class="ti-heart"></i></a>';
                                        } else {
                                            echo '<a href="#" class="add_cart" disabled>+ add to cart<i class="ti-heart"></i></a>';
                                        }
                                       
                                  echo ' </div>
                                </div>
                            </div>';
                    }
                ?>
                    
                </div>
            </div>
        </div>
    </div>
</section>


<?php require './includes/footer.php' ?>

<script src="js/jquery-1.12.1.min.js"></script>

<script src="js/popper.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.magnific-popup.js"></script>

<script src="js/swiper.min.js"></script>

<script src="js/masonry.pkgd.js"></script>

<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>

<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/stellar.js"></script>
<script src="js/price_rangs.js"></script>

<script src="js/custom.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"7721ac04f8bd3390","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2022.11.3","si":100}' crossorigin="anonymous"></script>
</body>

</html>