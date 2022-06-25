<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminLayout.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ExamPrep1.Student.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid bg-info">

        <div class="row justify-content-center">

            <div class="col-md-10">

                <div class="divMsg">
                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="text-danger"></asp:Label>
                </div>

                <div class="card my-5">
                    <div class="card-header bg-gradient bg-primary text-light fs-5 fw-semibold text-center">
                        Student Registration
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">FirstName</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">LastName</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6">
                                <label class="form-label">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Contact No</label>
                                <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6">
                                <label class="form-label">Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Gender</label>
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">Select...</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="2">Female</asp:ListItem>
                                    <asp:ListItem Value="3">Others</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">Date of Birth</label>
                                <asp:TextBox ID="txtDof" runat="server" CssClass="form-control datepicker" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Entry Date</label>
                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control datepicker" TextMode="Date"></asp:TextBox>
                            </div>

                        </div>
                        <div class="row float-end mt-2">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
                        </div>
                    </div>

                    
                </div>
                <div class="card my-5">
                        <div class="card-header bg-gradient bg-primary text-light fs-5 fw-semibold text-center">
                            Student Information View
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <asp:GridView ID="gvStudent" runat="server" CssClass="table table-bordered table-striped"></asp:GridView>
                            </div>
                        </div>
                    </div>
            </div>
        </div>



    </div>
   

</asp:Content>
