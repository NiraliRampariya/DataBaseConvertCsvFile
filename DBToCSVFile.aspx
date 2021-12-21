<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBToCSVFile.aspx.cs" Inherits="DataBaseConvertCsvFile.DBToCSVFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 177px">
    <form id="form1" runat="server">
        <div style="font-family:Arial">
            Format:
            <asp:DropDownList ID="ddlExportFormat" runat="server">
                <asp:ListItem Text="COMMA DELIMITED" Value="COMMA DELIMITED"></asp:ListItem>
                <asp:ListItem Text="PIPE DELIMITED" Value="PIPE DELIMITED"></asp:ListItem> 
            </asp:DropDownList>
            <asp:Button ID="btnExport" runat="server" Text="Export" OnClick = "btnExport_Click"  />
        </div>
    </form>
</body>
</html>
