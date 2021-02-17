<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EBBilling.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/MyCss1.css" rel="stylesheet" />
</head>
<body>
    <h1>
        <center>Login </center>
    </h1>
    <form id="form1" runat="server">
        <div style="width: 80%; margin-left: 10%">
            <div class="container">
                <div class="form-group">
                    <label>User Name </label>
                    <span class="redColor">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    </span>
                    <asp:TextBox ID="txtUserName" MaxLength="15" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <span class="redColor">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    </span>
                    <asp:TextBox ID="txtPassword" MaxLength="15" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </div>
                <br />
                <h2>
                    <asp:Label ID="lblNote" class="label label-info" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblLoginMessage" class="label label-danger" runat="server"></asp:Label></h2>
            </div>
        </div>

    </form>
</body>
</html>
