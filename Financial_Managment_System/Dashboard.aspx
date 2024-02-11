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
                        <p class="card-text">Amount: $1,000</p>
                        <p class="card-text">Transactions: 10</p>
                        <p class="card-text">Date/Time: Jan 15, 2024 10:30 AM</p>
                    </div>
                </div>
            </div>

            <!-- Total Expense Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-danger text-white">
                    <div class="card-body">
                        <h5 class="card-title">Total Expense</h5>
                        <p class="card-text">Amount: $500</p>
                        <p class="card-text">Transactions: 5</p>
                        <p class="card-text">Date/Time: Jan 15, 2024 11:45 AM</p>
                    </div>
                </div>
            </div>

            <!-- Maximum Income Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Maximum Income</h5>
                        <p class="card-text">Amount: $300</p>
                    </div>
                </div>
            </div>

            <!-- Maximum Expense Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-secondary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Maximum Expense</h5>
                        <p class="card-text">Amount: $150</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Minimum Income Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-warning text-dark">
                    <div class="card-body">
                        <h5 class="card-title">Minimum Income</h5>
                        <p class="card-text">Amount: $50</p>
                    </div>
                </div>
            </div>

            <!-- Minimum Expense Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5 class="card-title">Minimum Expense</h5>
                        <p class="card-text">Amount: $25</p>
                    </div>
                </div>
            </div>

            <!-- Last Income Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h5 class="card-title">Last Income</h5>
                        <p class="card-text">Amount: $100</p>
                        <p class="card-text">Date/Time: Jan 15, 2024 2:15 PM</p>
                    </div>
                </div>
            </div>

            <!-- Last Expense Box -->
            <div class="col-md-3 mb-4">
                <div class="card bg-danger text-white">
                    <div class="card-body">
                        <h5 class="card-title">Last Expense</h5>
                        <p class="card-text">Amount: $75</p>
                        <p class="card-text">Date/Time: Jan 15, 2024 3:30 PM</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Best Income Category Box -->
            <div class="col-md-6 mb-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Best Income Category</h5>
                        <p class="card-text">Category: Salary</p>
                    </div>
                </div>
            </div>

            <!-- Best Expense Category Box -->
            <div class="col-md-6 mb-4">
                <div class="card bg-secondary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Best Expense Category</h5>
                        <p class="card-text">Category: Groceries</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Current Balance Box -->
            <div class="col-md-12">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5 class="card-title">Current Balance</h5>
                        <p class="card-text">Balance: $500</p>
                    </div>
                </div>
            </div>
        </div>
    </div>







</asp:Content>
