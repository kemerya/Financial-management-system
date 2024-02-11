<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tips.aspx.cs" Inherits="Financial_Managment_System.tips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            padding-top: 56px;
        }

        .tips-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .tip-card {
            width: 300px;
            margin: 20px;
            padding: 15px;
            border-radius: 5px;
            transition: transform 0.3s ease-in-out;
        }

            .tip-card:hover {
                transform: scale(1.05);
            }
    </style>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">Financial Tips Admin</a>
        <!-- Add additional navigation elements as needed -->
    </nav>

    <!-- Page Content -->
    <%--<div class="container-fluid">--%>
    <%--<div class="container">--%>

    <div class="container">
        <div class="col-md-12 mx-auto">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <div class="card">
                            <div class="card-body">


                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="tipName">Full Name:</label>
                                            <asp:TextBox type="text" class="form-control" ID="TextBox1"
                                                runat="server"></asp:TextBox>
                                            <%-- <input type="text" class="form-control" id="tipName" required>--%>
                                        </div>
                                        <div class="form-group">
                                            <label for="tipContent">Tip:</label>
                                            <asp:TextBox class="form-control" ID="TextBox2" Height="200px"
                                                runat="server" required="text"></asp:TextBox>
                                            <%-- <textarea class="form-control" id="tipContent" rows="4"  required></textarea>--%>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <%--  <label>Add</label>--%>
                                                <div class="form-group">
                                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button4"
                                                        runat="server" Text="Add" OnClick="Button4_Click" />
                                                   <%-- <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1"
                                                        runat="server" Text="Add" OnClick="Button1_Click" />--%>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <%-- <label>Update</label>--%>
                                                <div class="form-group">
                                                    <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button2"
                                                        runat="server" Text="Update" OnClick="Button2_Click" />
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <%--<label>Delate</label>--%>
                                                <div class="form-group">
                                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button3"
                                                        runat="server" Text="Delate" OnClick="Button3_Click" />

                                                </div>
                                            </div>
                                        </div>

                                        <!-- Tips Container -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="tips-container" id="tipsContainerr">
                                                    <!-- Randomly colored boxes with tips will be added dynamically here -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <%--<a href="LandingPage.aspx"><< Back to home</a>--%>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <center>
                                                <h3>Useful Tips</h3>
                                            </center>
                                            <div class="col">
                                                <div class="form-group">
                                                    <hr />
                                                </div>
                                            </div>


                                            <%-- <label for="tips">Useful Tips:</label>--%>
                                            <%-- <asp:TextBox type="text" class="form-control" ID="TextBox3"
                             runat="server"></asp:TextBox>
                                            --%> <%-- <input type="text" class="form-control" id="tipName" required>--%>
                                        </div>
                                        <div class="form-group">
                                            <label for="tipContent"></label>
                                            <%--<asp:TextBox class="form-control" ID="TextBox4" Height="200px"
                             runat="server" required="text"></asp:TextBox>--%>
                                            <%-- <textarea class="form-control" id="tipContent" rows="4"  required></textarea>--%>
                                        </div>
                                        

                                        <!-- Tips Container -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="tips-container" id="tipsContainer">
                                                    <!-- Randomly colored boxes with tips will be added dynamically here -->
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" SelectCommand="SELECT * FROM [Tip_table]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

            <div class="row">
                <div class="col">

                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" 
                        runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="AdminName" HeaderText="AdminName" SortExpression="AdminName" />
                            <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" />
                        </Columns>
                    
                    </asp:GridView>

                       </div>
                    </div>
                               


                            </div>


                            <%--<a href="LandingPage.aspx"><< Back to home</a>--%>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>













    <%--<div class="row">
       <div class="col-md-6">
       <label>Full Name</label>
       <div class="form-group">
           <asp:TextBox type="text" CssClass="form-control" ID="TextBox3"
               runat="server" required="text"></asp:TextBox>
       </div>
       </div>

       <div class="col-md-6">
       <label>Husband name</label>
       <div class="form-group">
           <asp:TextBox type="text" CssClass="form-control" ID="TextBox4"
               runat="server" required="text"></asp:TextBox>

       </div>
   </div>
       </div>--%>






    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript -->
<%--    <script>
        // Function to post a tip
        function postTip() {
            var name = $('#tipName').val();
            var tip = $('#tipContent').val();
            var dateTime = new Date().toLocaleString();

            // Create a random color for the tip card
            var randomColor = getRandomColor();
            // Create a new tip card with a random color
            var tipCard = $('<div class="tip-card" style="background-color:' + randomColor + '"><h5 class="card-title">' + name + '</h5><p class="card-text">' + tip + '</p><small class="text-muted">' + dateTime + '</small></div>');

            // Add the tip card to the container
            $('#tipsContainer').append(tipCard);

            // Clear the form fields
            $('#tipName').val('');
            $('#tipContent').val('');
        }

        // Function to generate a random color
        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }
    </script>--%>
</asp:Content>
