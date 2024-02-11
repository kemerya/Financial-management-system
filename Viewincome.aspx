<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Viewincome.aspx.cs" Inherits="Financial_Managment_System.Viewincome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">


    <style>
        /* custom styles */
        .even-row {
            background-color: blue;
            /* color: white;*/
        }

        .odd-row {
            background-color: yellow;
        }
    </style>

    <div class="container mt-4">
        <h3>your Income History</h3>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" SelectCommand="SELECT * FROM [Income_Table]"></asp:SqlDataSource>
        <asp:GridView class="table table-striped table-bordered" ID="GridView1"
            runat="server" AutoGenerateColumns="False" DataKeyNames="Income_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Income_ID" HeaderText="Income_ID" ReadOnly="True" SortExpression="Income_ID" />
                <asp:BoundField DataField="IncomeCatagory" HeaderText="IncomeCatagory" SortExpression="IncomeCatagory" />
                <asp:BoundField DataField="IncomeAmount" HeaderText="IncomeAmount" SortExpression="IncomeAmount" />
                <asp:BoundField DataField="IncomeDate" HeaderText="IncomeDate" SortExpression="IncomeDate" />
                <asp:BoundField DataField="IncomeDescription" HeaderText="IncomeDescription" SortExpression="IncomeDescription" />
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
  <%--  <script>
        $(document).ready(function () {
            // Initialize DataTable
            $('#incomeTable').DataTable();

            // Add even/odd row colors
            $('#incomeTable').on('draw.dt', function () {
                $('tbody tr:even').addClass('even-row');
                $('tbody tr:odd').addClass('odd-row');
            });
        });
    </script>--%>

</asp:Content>
