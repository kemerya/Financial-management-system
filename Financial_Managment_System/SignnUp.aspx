<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignnUp.aspx.cs" Inherits="Financial_Managment_System.SignnUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Custom Styles -->
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
            position: center
        }

        .btn-role {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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


        <div class="card">
            <h3 class="card-title">Sign Up</h3>

            <div class="mb-3">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox3" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged" TextMode="Email"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox4" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox5" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox6" runat="server" Width="270px" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            </div>

            <!-- Role Selection Buttons -->
            <p class="text-center mb-0">Choose Role:</p>
            <div class="d-flex justify-content-center">
                <div class="btn-group mt-2" role="group" aria-label="Role selection">
                    <asp:DropDownList class="btn btn-outline-primary role-btn" ID="DropDownList1" runat="server">
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                <%--sign up button--%>
                <div class="mb-3">
                    <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" Width="260px" />
                  <a href="SignnIn.aspx" class="btn btn-secondary btn-block" onclick="toggleForm()">Back to Login</a>
                </div>
            </div>
        



        <!-- Bootstrap JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!-- Custom Script -->
        <script>
            // Initialize DataTable
            $(document).ready(function () {
                $('#loginForm').submit(function (e) {
                    e.preventDefault();
                    // Add your login form submission logic here
                });

                $('#signupForm').submit(function (e) {
                    e.preventDefault();
                    // Add your sign-up form submission logic here
                });

                // Add DataTable to role selection buttons
                $('.role-btn').DataTable({
                    searching: false,
                    paging: false,
                    info: false,
                    columnDefs: [
                        { orderable: false, targets: '_all' }
                    ]
                });
            });

            function toggleForm() {
                $('#loginForm').toggleClass('hidden-form');
                $('#signupForm').toggleClass('hidden-form');
            }
        </script>

    </form>
</body>
</html>
