<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewExpence.aspx.cs" Inherits="Financial_Managment_System.ViewExpence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">

    <!--  custom styles -->
    <style>
        /* Add your custom styles here */
        .even-row {
            background-color:blue;
            color: black;
        }
        .odd-row {
            background-color:yellow;
            color: black;
        }
    </style>


    <div class="container mt-4">
        <h2>Your Expense History<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" SelectCommand="SELECT * FROM [Expense_Table]"></asp:SqlDataSource>
        </h2>
        <!-- Expense Table -->
        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Expense_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Expense_ID" HeaderText="Expense_ID" ReadOnly="True" SortExpression="Expense_ID" />
                <asp:BoundField DataField="ExpenseCatagory" HeaderText="ExpenseCatagory" SortExpression="ExpenseCatagory" />
                <asp:BoundField DataField="ExpenseAmount" HeaderText="ExpenseAmount" SortExpression="ExpenseAmount" />
                <asp:BoundField DataField="ExpenseDate" HeaderText="ExpenseDate" SortExpression="ExpenseDate" />
                <asp:BoundField DataField="ExpenseDescription" HeaderText="ExpenseDescription" SortExpression="ExpenseDescription" />
            </Columns>
        </asp:GridView>   
    </div>









    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- DataTables JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

    <!--  custom script -->
    <script>
        $(document).ready(function () {
            // Initialize DataTable
            $('#expenseTable').DataTable();

            // Add even/odd row colors
            $('#expenseTable').on('draw.dt', function () {
                $('tbody tr:even').addClass('even-row');
                $('tbody tr:odd').addClass('odd-row');
            });
        });
    </script>



</asp:Content>
