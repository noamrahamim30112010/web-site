<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>טופס התחברות</h1>
    <form method="post" runat="server">
        אימייל:
        <input type="text" name="email" placeholder="enter your email" />
        <br />
        סיסמה:
        <input type="password" name="pass" placeholder="enter your password" />
        <br />
        <input type="submit" value="התחבר" />
    </form>

    <%= strResult %>
</asp:Content>