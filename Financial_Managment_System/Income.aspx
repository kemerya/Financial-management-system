<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="Financial_Managment_System.Income" %>

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

        #totalIncome {
            color: #28a745; /* Green color for income */
        }
    </style>

    <div class="container mt-4">
        <h2>Income Detail</h2>

        <!-- Income Form -->
        <form id="incomeForm">
            <div class="form-group">
                <label for="incmeID">Income ID:</label>
                 <asp:TextBox type="number" min="0" class="form-control" ID="TextBox1" required="true" runat="server"></asp:TextBox>

            </div>

            <div class="form-group">
                <label for="incomeCategory">Income Category:</label>
                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                    <asp:ListItem>Salary</asp:ListItem>
                    <asp:ListItem>Freelance</asp:ListItem>
                    <asp:ListItem>Investment</asp:ListItem>
                    <asp:ListItem>Bonuses</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="incomeAmount">Income Amount:</label>
                <asp:TextBox type="number" min="0" class="form-control" ID="TextBox2" runat="server"></asp:TextBox>


            </div>
            <div class="form-group">
                <label for="incomeDate">Date:</label>
                <asp:TextBox class="form-control" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
               
                <%-- <asp:Calendar type="date" class="form-control" ID="Calendar1" runat="server"></asp:Calendar>--%>

                <%--   <input type="date" class="form-control" id="incomeDate" required>--%>
            </div>

            <div class="form-group">
                <label for="incomeDescription">Income Description:</label>
                <asp:TextBox class="form-control" ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
               <%-- <textarea class="form-control" id="incomeDescription" rows="3"></textarea>--%>
            </div>
            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
          <%--  <button type="button" class="btn btn-primary" onclick="saveIncome()">Save</button>--%>
        </form>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Financial_Management_SystemConnectionString %>" SelectCommand="SELECT * FROM [Income_Table]"></asp:SqlDataSource>

        <hr>

        <!-- Income Table -->
        
        <h3 >Income History</h3>

         <asp:GridView class="table table-striped table-bordered" ID="GridView1" 
     runat="server" AutoGenerateColumns="False" DataKeyNames="Income_ID" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="Income_ID" HeaderText="Income_ID" ReadOnly="True" SortExpression="Income_ID" />
                 <asp:BoundField DataField="IncomeCatagory" HeaderText="IncomeCatagory" SortExpression="IncomeCatagory" />
                 <asp:BoundField DataField="IncomeAmount" HeaderText="IncomeAmount" SortExpression="IncomeAmount" />
                 <asp:BoundField DataField="IncomeDate" HeaderText="IncomeDate" SortExpression="IncomeDate" />
                 <asp:BoundField DataField="IncomeDescription" HeaderText="IncomeDescription" SortExpression="IncomeDescription" />
             </Columns>
 
 </asp:GridView>










        <table id="incomeTable" class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Category</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <!-- Income data will be dynamically added here -->
            </tbody>
        </table>

        <!-- Total Income Box -->
        <div class="mt-3">
            <h4>Total Income: <span id="totalIncome">0</span></h4>
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
            $('#incomeTable').DataTable();
        });

        // Function to save income and update the table
        function saveIncome() {
            // Get input values
            var name = $('#incomeName').val();
            var category = $('#incomeCategory').val();
            var amount = $('#incomeAmount').val();
            var date = $('#incomeDate').val();
            var description = $('#incomeDescription').val();

            // Validate inputs
            if (name && category && amount && date) {
                // Add income to the table
                var table = $('#incomeTable').DataTable();
                table.row.add([name, category, amount, date, description]).draw();

                // Update total income
                updateTotalIncome();

                // Clear the form
                $('#incomeForm')[0].reset();
            } else {
                alert('Please fill in all required fields.');
            }
        }

        // Function to update total income
        function updateTotalIncome() {
            var table = $('#incomeTable').DataTable();
            var total = 0;

            table.rows().every(function () {
                var rowData = this.data();
                total += parseFloat(rowData[2]);
            });

            $('#totalIncome').text(total.toFixed(2));
        }
    </script>






</asp:Content>
