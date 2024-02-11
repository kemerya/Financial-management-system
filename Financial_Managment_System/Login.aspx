<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Financial_Managment_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!-- Custom Styles -->
<style>
    .card {
        width: 300px;
        margin: auto;
        margin-top: 5%;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
</style>

<div class="card">
    <h5 class="card-title mb-4">Login</h5>

    <!-- Login Form -->
    <form id="loginForm" class="active-form" action="your_login_endpoint" method="POST" >
        <div class="mb-3">
            <label for="username" class="form-label">Email</label>
            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
         
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
         
        </div>
        <div class="mb-3">
            <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
         
            <a href="SignnUp.aspx" class="btn btn-secondary btn-block" onclick="toggleForm()">Sign Up</a>
        </div>
    </form>

   
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

















</asp:Content>
