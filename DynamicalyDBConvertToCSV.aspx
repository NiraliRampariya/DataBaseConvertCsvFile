<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicalyDBConvertToCSV.aspx.cs" Inherits="DataBaseConvertCsvFile.DynamicalyDBConvertToCSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button Text="Export" OnClick="ExportCSV" runat="server" />
        </div>
    </form>
</body>
</html>
