<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Financial_Managment_System.ContactUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Landing Page</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- DataTable CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">

    <!-- Custom CSS for Animation -->
    <style>
        body {
            background-image: url('imgs/landing.jpg');
            background-size: cover;
        }



        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animated {
            animation: fadeInUp 0.6s ease-out;
        }

        .contact-form {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <img src="imgs/Kabr.png" width="60" height="60" />Financial Managment system </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item animated">
                    <a class="nav-link" href="LandingPage.aspx">Home</a>
                </li>
                <li class="nav-item animated">
                    <a class="nav-link" href="About.aspx">About</a>
                </li>
                <li class="nav-item animated">
                    <a class="nav-link" href="Service.aspx">Services</a>
                </li>
                <li class="nav-item animated">
                    <a class="nav-link" href="ContactUs.aspx">Contact Us</a>
                </li>
                <li class="nav-item animated">
                    <a class="nav-link" href="SignnUp.aspx">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav>




    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 contact-form">
                <h2 class="text-center mb-4">Contact Us</h2>
                <form>
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter your email">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" id="message" rows="5" placeholder="Enter your message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Social Media Links -->
    <div class="mt-8">
        <h5>Connect with us:</h5>
        <ul class="list-inline">
            <!-- Telegram -->
            <li class="list-inline-item">
                <a href="https://t.me/YourTelegramUsername" target="_blank" title="Telegram">
                    <i class="fab fa-telegram text-info"></i>
                </a>
            </li>
            <!-- Instagram -->
            <li class="list-inline-item">
                <a href="https://www.instagram.com/YourInstagramUsername" target="_blank" title="Instagram">
                    <i class="fab fa-instagram text-danger"></i>
                </a>
            </li>
            <!-- LinkedIn -->
            <li class="list-inline-item">
                <a href="https://www.linkedin.com/in/kemerya-zeynu-b918a924a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" target="_blank" title="LinkedIn">
                    <i class="fab fa-linkedin text-primary"></i>
                </a>
            </li>
            <!-- Facebook -->
            <li class="list-inline-item">
                <a href="https://www.facebook.com/YourFacebookUsername" target="_blank" title="Facebook">
                    <i class="fab fa-facebook text-primary"></i>
                </a>
            </li>
            <!-- GitHub -->
            <li class="list-inline-item">
                <a href="https://github.com/YourGitHubUsername" target="_blank" title="GitHub">
                    <i class="fab fa-github text-dark"></i>
                </a>
            </li>
            <!-- Twitter -->
            <li class="list-inline-item">
                <a href="https://twitter.com/YourTwitterUsername" target="_blank" title="Twitter">
                    <i class="fab fa-twitter text-info"></i>
                </a>
            </li>
        </ul>
    </div>




    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- DataTable JS -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
</body>
</html>
