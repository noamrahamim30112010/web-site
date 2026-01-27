<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sighup.aspx.cs" Inherits="sighup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>טופס הרשמה</h1>
    <form name="formPage" method="post" runat="server">
        שם פרטי:
        <input type="text" name="firstname" id="firstname" placeholder="enter your name">
        <br />
        אימייל:
        <input type="text" name="email" id="email" placeholder="enter your email">
        <br />
        סיסמה:
        <input type="text" name="password" id="password" placeholder="enter your password">

        <br />
        תרגילים האוהבים במכון: 
        <br />
        באנץ פרס<input type="checkbox" name="check2"  value="באנץ פרס" id="check_1"><br />
        סקוואט:
        <input type="checkbox" name="check2" value="סקוואט" id="check_2"><br />
        דדליפט <input type="checkbox" name="check2" value="דדליפט"  id="check_3"><br />
        לג פרס:
        <input type="checkbox" name="check2" value="לג פרס" id="check_4">
        <br />
        איזה שריר אתה הכי אוהב לאמן: 
        <br />
        חזה<input type="radio" name="radio1" checked value="חזה" id="radio_1"><br />
        גב<input type="radio" name="radio1" value="גב" id="radio_2"><br />
        רגליים<input type="radio" name="radio1" value="רגליים" checked id="radio_3"><br />
        ידיים<input type="radio" name="radio1" value="ידיים" id="radio_4"><br />
        איזה ספליט אתה עושה :
        <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="איזה ספליט אתה עושה"></textarea>
        <br />
        <select name="age" id="age">
            <option value="0">בחר גיל</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
        </select>
        <br />
        <input id="Submit1" type="submit" value="שלח" />
    </form>

    <%=strR %>
</asp:Content>

