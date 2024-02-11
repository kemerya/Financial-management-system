<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lock.aspx.cs" Inherits="Financial_Managment_System._lock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <!-- Custom Styles -->
    <style>
        body {
            background-image: url('imgs/financial-management.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .card {
            width: 300px;
            margin: auto;
            margin-top: 5%;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background to the card */
        }
    </style>
</head>
<body>
   
<div class="card">
    <h5 class="card-title mb-4">Sign Up</h5>
    <form id="signupForm" class="hidden-form" action="your_signup_endpoint" method="POST">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" required>
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="newUsername" class="form-label">Username</label>
            <input type="text" class="form-control" id="newUsername" name="newUsername" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-success btn-block">Sign Up</button>
            <a href="Login.aspx" class="btn btn-secondary btn-block" onclick="toggleForm()">Back to Login</a>
        </div>
    </form>


                <!-- Role Selection Buttons -->
                <p class="text-center mb-0">Choose Role:</p>
                <div class="d-flex justify-content-center">
                    <div class="btn-group mt-2" role="group" aria-label="Role selection">
                        <button type="button" class="btn btn-outline-primary role-btn" data-role="user">User</button>
                        <button type="button" class="btn btn-outline-primary role-btn" data-role="admin">Admin</button>
                    </div>
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
        </div>
    </form>
</body>
</html>
