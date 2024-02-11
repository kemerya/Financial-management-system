<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Financial_Managment_System.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container mt-4">
        <div class="row">
            <!-- Total Income Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-success text-white">
        <div class="card-body"> 
            <h5 class="card-title">Total Income</h5>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT SUM([IncomeAmount]) AS TotalIncome FROM [Income_Table]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="TotalIncome" HeaderText="Total Income" SortExpression="TotalIncome" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


            <!-- Total Expense Box -->
        <div class="col-md-3 mb-4">
    <div class="card bg-danger text-white">
        <div class="card-body">
            <h5 class="card-title">Total Expense</h5>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT SUM([ExpenseAmount]) AS TotalExpense FROM [Expense_Table]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="TotalExpense" HeaderText="Total Expense" SortExpression="TotalExpense" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>



            <!-- Maximum Income Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-primary text-white">
        <div class="card-body">
            <h5 class="card-title">Maximum Income</h5>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT MAX([IncomeAmount]) AS MaxIncome FROM [Income_Table]"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="MaxIncome" HeaderText="Max Income" SortExpression="MaxIncome" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


            <!-- Maximum Expense Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-secondary text-white">
        <div class="card-body">
            <h5 class="card-title">Maximum Expense</h5>
            
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT MAX([ExpenseAmount]) AS MaxExpense FROM [Expense_Table]"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="MaxExpense" HeaderText="Max Expense" SortExpression="MaxExpense" />
                </Columns>
            </asp:GridView>
            
            <%--<p class="card-text">Amount: $150</p>--%>
        </div>
    </div>
</div>


        <div class="row">
            <!-- Minimum Income Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-warning text-dark">
        <div class="card-body">
            <h5 class="card-title">Minimum Income</h5>
            
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT MIN([IncomeAmount]) AS MinIncome FROM [Income_Table]"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="MinIncome" HeaderText="Min Income" SortExpression="MinIncome" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


            <!-- Minimum Expense Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-info text-white">
        <div class="card-body">
            <h5 class="card-title">Minimum Expense</h5>
            
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT MIN([ExpenseAmount]) AS MinExpense FROM [Expense_Table]"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                <Columns>
                    <asp:BoundField DataField="MinExpense" HeaderText="Min Expense" SortExpression="MinExpense" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


            <!-- Last Income Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-success text-white">
        <div class="card-body">
            <h5 class="card-title">Last Income</h5>
            
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT TOP 1 [IncomeAmount], [IncomeDate] FROM [Income_Table] ORDER BY [IncomeDate] DESC"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7">
                <Columns>
                    <asp:BoundField DataField="IncomeAmount" HeaderText="IncomeAmount" SortExpression="IncomeAmount" />
                    <asp:BoundField DataField="IncomeDate" HeaderText="IncomeDate" SortExpression="IncomeDate" />
                </Columns>
            </asp:GridView>
           
        </div>
    </div>
</div>


            <!-- Last Expense Box -->
           <div class="col-md-3 mb-4">
    <div class="card bg-danger text-white">
        <div class="card-body">
            <h5 class="card-title">Last Expense</h5>
            
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT TOP 1 [ExpenseDate], [ExpenseAmount] FROM [Expense_Table] ORDER BY [ExpenseDate] DESC"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
                <Columns>
                    <asp:BoundField DataField="ExpenseDate" HeaderText="ExpenseDate" SortExpression="ExpenseDate" />
                    <asp:BoundField DataField="ExpenseAmount" HeaderText="ExpenseAmount" SortExpression="ExpenseAmount" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


        <div class="row">
            <!-- Best Income Category Box -->
        <div class="col-md-6 mb-4">
    <div class="card bg-primary text-white">
        <div class="card-body">
            <h5 class="card-title">Best Income Category</h5>
            
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT TOP 1 [IncomeCatagory] FROM [Income_Table] ORDER BY [IncomeAmount] DESC"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
                <Columns>
                    <asp:BoundField DataField="IncomeCatagory" HeaderText="IncomeCatagory" SortExpression="IncomeCatagory" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>

</div>


            <!-- Best Expense Category Box -->
         <div class="col-md-6 mb-4">
    <div class="card bg-secondary text-white">
        <div class="card-body">
            <h5 class="card-title">Best Expense Category</h5>
            
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT TOP 1 [ExpenseCatagory] FROM [Expense_Table] ORDER BY [ExpenseAmount] DESC"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
                <Columns>
                    <asp:BoundField DataField="ExpenseCatagory" HeaderText="ExpenseCatagory" SortExpression="ExpenseCatagory" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>



        <div class="row">
            <!-- Current Balance Box -->
          <div class="col-md-12">
    <div class="card bg-info text-white">
        <div class="card-body">
            <h5 class="card-title">Current Balance</h5>
            
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" 
                SelectCommand="SELECT (SELECT ISNULL(SUM([IncomeAmount]), 0) FROM [Income_Table]) - (SELECT ISNULL(SUM([ExpenseAmount]), 0) FROM [Expense_Table]) AS CurrentBalance"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11">
                <Columns>
                    <asp:BoundField DataField="CurrentBalance" HeaderText="Current Balance" SortExpression="CurrentBalance" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>

        </div>
    </div>
</asp:Content>
