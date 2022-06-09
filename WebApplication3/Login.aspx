<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Giriş Yap<br />
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
        <asp:Button ID="btnGiriş" runat="server" OnClick="btnGiriş_Click" Text="Giriş" />
        <asp:SqlDataSource ID="Sample" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString2 %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:HyperLink ID="lnkKayıt" NavigateUrl="~/Register.aspx" runat="server">Kayıt Ol</asp:HyperLink>
        <br />
        <asp:Label ID="lblSonuç" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

