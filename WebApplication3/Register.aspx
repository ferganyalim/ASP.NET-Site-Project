<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Kaydol<br />
            <br />
        </div>
        Kullanıcı Adı :&nbsp;
        <asp:TextBox ID="txtKullanıcıAdı" runat="server" Height="16px"></asp:TextBox>
        <br />
        <br />
        Şifre:
        <asp:TextBox ID="txtŞifre" runat="server" Height="16px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnKayıt" runat="server" OnClick="btnKayıt_Click" Text="Kayıt" />
        <asp:SqlDataSource ID="Sample" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lblSonuç" runat="server" Text=""></asp:Label>
        <br />
        <asp:HyperLink ID="lnkGiriş" NavigateUrl="~/Login.aspx" runat="server">Giriş Yap</asp:HyperLink>
    </form>
</body>
</html>
