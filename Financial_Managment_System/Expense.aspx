﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Expense.aspx.cs" Inherits="Financial_Managment_System.Expense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">

    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 50px;
        }

        h2, h3, h4 {
            color: #007bff;
        }

        button.btn-primary {
            background-color: #007bff;
            border: none;
        }

            button.btn-primary:hover {
                background-color: #0056b3;
            }

        #totalExpense {
            color: #dc3545;
        }
    </style>

    <div class="container mt-4">
        <h2>Expense Detail</h2>

        <!-- Expense Form -->
        <form id="expenseForm">
            <div class="form-group">
                <label for="expenseName">Expense ID:</label>
                <asp:TextBox type="number" min="0" class="form-control" ID="TextBox2" required="true" runat="server"></asp:TextBox>
                <%-- <input type="text" class="form-control" id="expenseName" required>--%>
            </div>

            <div class="form-group">
                <label for="expenseCategory">Expense Category:</label>
                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" required="true">
                    <asp:ListItem>Food</asp:ListItem>
                    <asp:ListItem>Medical</asp:ListItem>
                    <asp:ListItem>Transportation</asp:ListItem>
                    <asp:ListItem>Entertainment</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>

            </div>

            <div class="form-group">
                <label for="expenseAmount">Expense Amount:</label>
                <asp:TextBox type="number" min="0" class="form-control" ID="TextBox1" required="true" runat="server"></asp:TextBox>

            </div>

            <div class="form-group">
                <label for="expenseDate">Date:</label>

                <asp:TextBox class="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>



                <%--<asp:Timer class="form-control" ID="Timer1" runat="server"></asp:Timer>--%>
                <%--<input type="date" class="form-control" id="expenseDate" required>--%>
            </div>

            <div class="form-group">
                <label for="expenseDescription">Expense Description:</label>


                <asp:TextBox class="form-control" ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>


            </div>

            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" />
            <%-- <button type="button" class="btn btn-primary" onclick="saveExpense()">Save</button>--%>
        </form>

        <hr>

        <!-- Expense Table -->
        <h3>Expense History</h3>
        <table id="expenseTable" class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <!-- Expense data will be dynamically added here -->
            </tbody>
        </table>

        <!-- Total Expense Box -->
        <div class="mt-3">
            <h4>Total Expense: <span id="totalExpense">0</span></h4>
        </div>
    </div>






    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- DataTables JS -->
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script>
        // Initialize DataTable
        $(document).ready(function () {
            $('#expenseTable').DataTable();
        });

        // Function to save expense and update the table
        function saveExpense() {
            // Get input values
            var name = $('#expenseName').val();
            var category = $('#expenseCategory').val();
            var amount = $('#TextBox1').val();
            var date = $('#expenseDate').val();
            var description = $('#expenseDescription').val();

            // Validate inputs
            if (name && category && amount && date) {
                // Add expense to the table
                var table = $('#expenseTable').DataTable();
                table.row.add([name, category, amount, date, description]).draw();

                // Update total expense
                updateTotalExpense();

                // Clear the form
                $('#expenseForm')[0].reset();
            } else {
                alert('Please fill in all required fields.');
            }
        }

        // Function to update total expense
        function updateTotalExpense() {
            var table = $('#expenseTable').DataTable();
            var total = 0;

            table.rows().every(function () {
                var rowData = this.data();
                total += parseFloat(rowData[2]);
            });

            $('#totalExpense').text(total.toFixed(2));
        }
    </script>












</asp:Content>
