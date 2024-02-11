<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Financial_Managment_System.LandingPage" %>

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
            background-size: cover; /* This ensures the image covers the entire background */
        }
        .landing-container {
            padding: 50px;
        }
        .landing-paragraph {
            color:black;
            font-size:medium;
            

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
    </style>
</head>
<body>
 <form id="form1" runat="server">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="imgs/Kabr.png" width="60" height="60" />Financial Management system </a>

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
    <asp:LinkButton Class="nav-link" ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Sign Up</asp:LinkButton>      
                </li>
            </ul>
        </div>
    </nav>

    <div class="container landing-container">
        <div class="row">
            <div class="col-md-6">
                <h1>Welcome to our Financial Platform!</h1>
                <p class="landing-paragraph"><b>    Welcome to our Personal Financial Management System! Take control of your finances with our user-friendly platform designed to empower you in managing your money.
    Join us on this journey towards financial success – where managing your money becomes not just a task but a rewarding experience.
    Start your financial transformation today!</b>

</p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- DataTable JS -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
</form>
</body>
</html>
