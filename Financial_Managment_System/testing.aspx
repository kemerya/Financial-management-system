<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="Financial_Managment_System.testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
       
          .card {
      width: 300px;
      margin: auto;
      margin-top: 5%;
      padding: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card"> 
           <div class="mb-3">
        <asp:Label ID="Label1" runat="server" Text="User name"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox CssClass="dicor" ID="TextBox1" runat="server" Width="292px"></asp:TextBox>
        
            </div>
            <p>
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="287px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="240px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign up" />
        </p>
             </div>
    </form>
</body>
</html>
