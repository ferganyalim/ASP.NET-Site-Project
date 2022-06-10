<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Tüm kayıtlı kullanıcıların bilgileri.<br />
            ID harici bilgileri dilediğinizce değiştirebilirsiniz. </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" 
        SelectCommand="SELECT * FROM [Login]" 
        UpdateCommand="UPDATE [Login] set username=@username, password=@password where id=@id" ></asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="lnkGiriş" NavigateUrl="~/Login.aspx" runat="server">Giriş Yap</asp:HyperLink>
    </form>
</body>
</html>
