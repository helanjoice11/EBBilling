<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateMangementAdd.aspx.cs" Inherits="EBBilling.StateMangementAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/MyCss1.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <label>Number 1 </label>
                <asp:TextBox ID="txtNumber1" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Number 2 </label>
                <asp:TextBox ID="txtNumber2" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnAdd" runat="server" Text="Add" class="btn btn-primary" OnClick="btnAdd_Click" />
            </div>
        </div>
    </form>
</body>
</html>
