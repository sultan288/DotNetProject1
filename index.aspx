<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ExamPrep1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--Custom Css-->
    <link href="assets/custom-style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <!--Navbar-->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="img-fluid" src="../assets/img/logo-ibm.png" alt="Alternate Text" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                    <a class="nav-link" href="#about_us">About Us</a>
                    <a class="nav-link" href="#contact_us">Contact Us</a>
                    <a class="nav-link" href="#blog">Blog</a>
                    <a class="nav-link" href="login2.aspx">Login</a>
                   
                </div>
            </div>
        </div>
    </nav>
    <!--/Navbar-->
    <!--Slider-->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../assets/img/b-2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../assets/img/b-1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../assets/img/OIP (1).jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!--/Slider-->
    <!--About us-->
    <section id="about_us" class="about_us">
        <div class="container pb-5">
            <!--Section title-->
            <div class="row pt-5">
                <div class="section_title text-center pb-3">
                    <h1>About Us</h1>

                    <p>The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options</p>
                </div>
            </div>
            <!--Section contect-->
            <div class="row">
                <div class="col-md-4">
                    <img class="img-fluid w-100  img-thumbnail" src="../assets/img/OIP (1).jpg" alt="Alternate Text" />
                </div>
                <div class="col-md-8">

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Home</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            2 The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options
                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            3 The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--/About us-->
    <!--Blog us-->
    <section id="blog">
        <div class="container-fluid bg-info py-5">
            <div class="container  pb-5">
                <!--Section title-->
                <div class="row py-4">
                    <div class="section_title text-center pb-3">
                        <h1>Latest Blog Posts</h1>
                        <p>The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options</p>
                    </div>
                </div>
                <!--Section contect-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card h-100">
                            <img src="../assets/img/OIP (1).jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="../assets/img/OIP (2).jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a short card.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="../assets/img/OIP.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Blog us-->
    <!--Contact us-->
    <section id="contact_us" class="about_us">
        <div class="container">
            <!--Section title-->
            <div class="row pt-5">
                <div class="section_title text-center pb-3">
                    <h1>Get in Touch</h1>
                    <p>The most basic list group is an unordered list with list items and the proper classes. Build upon it with the options</p>
                </div>
            </div>
            <!--Section contect-->
            <div class="row">
                <div class="col-md-6">
                    <h3>Contact Us</h3>
                    <p>
                        Address: hdfhdfdkfjdjfkdj <br />
                        Email: test@gmail.com <br />
                        Phone: 012457888  <br />
                        Web: www.kjfk.com <br />
                    </p>
                </div>
                <div class="col-md-6">
                    <form class="row g-3">
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input type="text" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="col-md-12">
                            <label for="inputEmail4" class="form-label">Message</label>
                            <textarea class="form-control" name="message"></textarea>
                        </div>
                        <div class="col-12 pb-5">
                            <button type="submit" class="btn btn-primary">Sign in</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!--/Contact us-->
    <!--Footer Top-->
    <section id="footer_top" class="footer_top py-5 bg-info text-light">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>About Us</h4>
                    <p>The most basic list group is an unordered list with list items and the</p>
                    <img src="../assets/img/logo.png" width="150" height="30" alt="Site logo" />
                </div>
                <div class="col-md-4">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4>Suscribe</h4>
                    <form action="/" method="post">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="youremail@gmail.com" aria-label="" aria-describedby="button-addon2">
                            <button class="btn btn-secondary" type="button" id="button-addon2">Send</button>
                        </div>
                        <div class="social_icons text-light">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a href="#"><i class="fab fa-google"></i></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--Footer Top-->
    <!--Topper-->
    <div class="topper">
        <a href="#" target="_top"><i class="fas fa-angle-up"></i></a>
    </div>
    <!--/Topper-->
    <!--Footer Bottom-->
    <section id="footer">
        <div class="container-fluid bg-dark text-center p-2">
            <p>&copy; <a href="https://www.google.com/" target="_blank">Copyright www.mamun.com</a></p>
        </div>
    </section>
    <!--/Footer Bottom-->

       
    </form>

     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
