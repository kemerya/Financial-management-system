<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="Financial_Managment_System.Budget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center mb-4">Personal Budget Planner</h1>

        <div class="row mb-4">
            <div class="col-md-4">
                <label for="budgetType">Select Budget Type:</label>
                <select class="form-control" id="budgetType" onchange="changeBudgetType()">
                    <option value="weekly">Weekly</option>
                    <option value="monthly">Monthly</option>
                    <option value="annual">Annual</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h3 class="mb-3">Budget Categories</h3>
                <div id="budgetCategories" class="card-deck">
                    <!-- Budget categories will be added dynamically -->
                </div>
            </div>
            <div class="col-md-6">
                <h3 class="mb-3">Spending Details</h3>
                <button type="button" class="btn btn-primary mt-3" data-toggle="modal" data-target="#spendingModal">Enter Spending Details</button>
            </div>
        </div>
    </div>

    <!-- Budget Categories Modal -->
    <div class="modal fade" id="spendingModal" tabindex="-1" role="dialog" aria-labelledby="spendingModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="spendingModalLabel">Enter Spending Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="spendingForm">
                        <!-- Spending details will be added dynamically -->
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="saveBudget()">Save Budget</button>
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
    <!-- Your custom scripts -->
    <script>
        // ... (rest of your JavaScript code)
    </script>
</asp:Content>
