<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tip_user.aspx.cs" Inherits="Financial_Managment_System.tip_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                                        </div>
                                        <div class="form-group">
                                            <label for="tipContent"></label>
                                        </div>
                                        <!-- Tips Container -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="tips-container" id="tipsContainer">
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


</asp:Content>
