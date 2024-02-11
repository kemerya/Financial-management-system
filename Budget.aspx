<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="Financial_Managment_System.Budget" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="col-md-12 mx-auto">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="container">
                        <h1 class="text-center mb-4">Personal Budget Plan</h1>
                        <div id="budgetCategoriesss" class="card-deck">

                            <asp:Label class="form-control" ID="Label7" runat="server" Text="Label"><b>Monthly Budget</b></asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Number" min="50" required="text"></asp:TextBox>
                            <asp:Label class="form-control" ID="Label4" runat="server" Text="Label"><b>Date</b></asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:Button class="btn btn-primary mt-3 form-control" ID="button1" runat="server" Text="Enter Details" OnClick="button1_Click" />
                       </div>
                    </div>
                </div>

              <div class="col-md-6 mx-auto">
                    <div class="container">
                        <h1 class="text-center mb-4">Transaction Table</h1>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>"
                            SelectCommand="SELECT [Monthly_Budget], (ISNULL([Monthly_Budget], 0) - ISNULL((SELECT SUM([ExpenseAmount]) FROM [Expense_Table]), 0)) AS Current_Balance FROM [Budget_Table]"></asp:SqlDataSource>
                        <asp:GridView class="table card-deck-bg-secondary" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Monthly_Budget" HeaderText="Monthly_Budget" SortExpression="Monthly_Budget" />
                                <asp:BoundField DataField="Current_Balance" HeaderText="Current_Balance" SortExpression="Current_Balance" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>






    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    
   
</asp:Content>
