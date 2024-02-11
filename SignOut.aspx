<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="Financial_Managment_System.SignOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout</title>
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    <!-- DataTable CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" />

    <!-- Custom CSS for Animation -->
    <style>
        body {
            background-image: url('imgs/landing.jpg');
            background-size: cover;
        }


        .card {
            width: 300px;
            margin: auto;
            margin-top: 5%;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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

    <form id="form1" runat="server">

        <div class="container mt-1">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Logout</h5>
                            <p>You have been successfully logged out.</p>
                            <a href="SignnIn.aspx" class="btn btn-primary btn-block">Login Again</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
