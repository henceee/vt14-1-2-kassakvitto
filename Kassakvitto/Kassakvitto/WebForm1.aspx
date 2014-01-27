<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Kassakvitto.WebForm1" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Calculate">
        <h1>Kassakvitto</h1>
        <p>Total Köpsumma</p>
        <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox><asp:Panel ID="krPanel" runat="server"><p>kr</p></asp:Panel>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SumTextBox" ErrorMessage="Ange en total köpsumma"></asp:RequiredFieldValidator>
        <asp:Button ID="ReceiptButton" runat="server" Text="Button" />
    </div>
    </form>
    <script src="Javascript/JavaScript.js"></script>
</body>
</html>
