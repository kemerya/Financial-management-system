<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checking.aspx.cs" Inherits="Financial_Managment_System.checking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
  <style>
    .login-container {
      max-width: 400px;
      margin: auto;
      margin-top: 100px;
      opacity: 0; /* Initial opacity set to 0 */
      animation: fadeIn 1s forwards; /* Use the fadeIn animation */
    }

    .login-box {
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2),
                  0 0 40px rgba(0, 0, 0, 0.3);
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-20px); /* Move the box up while fading in */
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>


  <div class="container login-container">
    <div class="login-box">
      <h2 class="text-center mb-4">Login</h2>
      <form>
        <div class="form-group">
          <label for="username">Username:</label>
          <input type="text" class="form-control" id="username" placeholder="Enter your username">
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" class="form-control" id="password" placeholder="Enter your password">
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
      </form>
    </div>
  </div>












</asp:Content>
