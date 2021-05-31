<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        })
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">

            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Member Details </h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center><img src="imgs/generaluser.png" width="100px" /></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-3">
                                <label> Member ID </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                            runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-primary" OnClick="LinkButton4_Click"
                                            ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label> Full Name </label>
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox3" Readonly="true"
                                            runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label> Account Status </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" Readonly="true"
                                            runat="server" placeholder="Status"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success mr-1" OnClick="LinkButton1_Click"
                                            ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-warning mr-1" OnClick="LinkButton2_Click"
                                            ><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-danger" OnClick="LinkButton3_Click"
                                            ><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                             <div class="col-md-3">
                                <label> DOB </label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8"  ReadOnly="true"
                                            runat="server" placeholder="DOB"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> Contact Number </label>
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox9" Readonly="true"
                                            runat="server" placeholder="Number"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-5">
                                <label> Email ID </label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" Readonly="true"
                                            runat="server" placeholder="email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-4">
                                <label> State </label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11"  ReadOnly="true"
                                            runat="server" placeholder="State"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> City </label>
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox12" Readonly="true"
                                            runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label> Pin Code </label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" Readonly="true"
                                            runat="server" placeholder="Pin Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col">
                                <label> Full Postal Address </label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"  ReadOnly="true"
                                            runat="server" placeholder="My Home" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button2" runat="server" Text="Delete User Permanently"
                                            class="btn btn-lg btn-block btn-danger" OnClick="Button2_Click"/>
                            </div>
                        </div>

                        </div>
                </div>
                <a href="homepage.aspx"> << Back to Home</a>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Member List </h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server"
                                    class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>


        </div>

        <br />
        <br />
    </div>

</asp:Content>
