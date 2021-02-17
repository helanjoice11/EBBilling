<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EBBillGenerator.aspx.cs" Inherits="EBBilling.EBBillGenerator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EB Bill Generator</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
    <link href="css/MyCss1.css" rel="stylesheet" />
</head>
<body>
    <h1>
        <center>EB Bill Generator</center>
    </h1>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <div class="container">
                    <div class="form-group">
                        <label>Customer Name:</label>
                        <asp:TextBox ID="txtCustomerName" runat="server" class="form-control" placeholder="Enter customer name"></asp:TextBox>
                        <span style="color: red">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="Customer Name is Required" ControlToValidate="txtCustomerName" Display="Dynamic"></asp:RequiredFieldValidator>
                        </span>
                    </div>
                    <div class="form-group">
                        <label>Address:</label>
                        <asp:TextBox ID="txtAddress" runat="server"
                            class="form-control" placeholder="Enter customer's Address" TextMode="MultiLine"></asp:TextBox>
                        <span style="color: red">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="Customer Name is Required" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </span>
                    </div>
                    <div class="form-group">
                        <label>Type:</label>
                        <asp:DropDownList ID="ddlType" runat="server" class="form-control">
                            <asp:ListItem Enabled="true" Text="-- Select Item --" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Commercial" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Domestic" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <span style="color: red">
                            <asp:RequiredFieldValidator ID="ReqMonth" runat="server" Display="Dynamic" ControlToValidate="ddlType" ErrorMessage="Choose type"
                                InitialValue="-1">
                            </asp:RequiredFieldValidator>
                        </span>
                    </div>
                    <div class="form-group">
                        <label>No Of Units:</label>
                        <asp:TextBox ID="txtNoOfUits" runat="server" class="form-control" placeholder="No Of Units consumed"></asp:TextBox>
                        <span style="color: red">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="Customer Name is Required" ControlToValidate="txtNoOfUits"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="Please give only numbers" ControlToValidate="txtNoOfUits" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        </span>
                    </div>
                    <div>
                        <asp:Button ID="btnCalculateBill" class="btn btn-primary" runat="server" Text="Calculate" OnClick="btnCalculateBill_Click" />
                    </div>
                </div>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <br />
                <br />
                <br />
                <div class="container">
                    <div class="well well-lg">
                        <table>
                            <tr>
                                <td>
                                    <label>Customer Name </label>
                                </td>
                                <td>
                                    <h3>
                                        <asp:Label ID="lblName" class="label label-info" runat="server"></asp:Label></h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Type </label>
                                </td>
                                <td>
                                    <h3>
                                        <asp:Label ID="lblType" class="label label-info" runat="server"></asp:Label></h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>No of units consumed</label></td>
                                <td>
                                    <h3>
                                        <asp:Label ID="lblNoOfUnits" class="label label-info" runat="server"></asp:Label></h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h2>
                                        <label>EB Bill Amount :</label></h2>
                                </td>

                                <td>
                                    <h2>
                                        <asp:Label ID="lblOutput" class="label label-success" runat="server"></asp:Label></h2>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary" OnClick="btnBack_Click" />
                </div>

            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
