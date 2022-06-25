<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="ExamPrep1.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--Custom Css-->
    <link href="assets/custom-style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container-fluid vh-100 bg-gradient bg-info mt-0">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="card mt-5 bg-gradient bg-primary">
                        <div class="card-header bg-gradient bg-dark text-light text-center">Login Now!</div>
                        <div class="card-body">
                            <div>
                                <label class="form-label text-light">Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>

                                <label class="form-label text-light">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-dark mt-3" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
