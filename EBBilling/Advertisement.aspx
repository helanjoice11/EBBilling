<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertisement.aspx.cs" Inherits="EBBilling.Advertisement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Advertisement</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/MyCss1.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
</head>
<body>
    <h1>
        <center>Car Advertisement</center>
    </h1>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>

                    <ContentTemplate>
                        <asp:Timer ID="Timer1" Interval="3000" runat="server"></asp:Timer>
                        <asp:AdRotator ID="AdRotator1" runat="server" Height="400" Width="800" AdvertisementFile="~/CarAdvertisement.xml" />
                    </ContentTemplate>

                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>
