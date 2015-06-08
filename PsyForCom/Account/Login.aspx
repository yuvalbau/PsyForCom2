<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PsyForCom.Account.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" id="defalutItem" style="margin-left: auto; margin-right: auto; width: 1000px">
        <link rel="stylesheet" href="/style.css" type="text/css" />
        <div class="col-md-3" style="float: right">

            <h1>דף כניסה:</h1>
            <div class="Step1" style="border: 1px solid black">

                <p>
                    <asp:Label runat="server" Font-Bold="true">1.בחר כניסת מטופל/פסיכולוג:</asp:Label>
                    <br />

                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">כניסה למשתמשים רשומים</asp:ListItem>
                        <asp:ListItem Value="2">כניסה לפסיכולוגים רשומים</asp:ListItem>
                        <asp:ListItem Value="3">כניסת מנהל אתר</asp:ListItem>
                    </asp:DropDownList>

                </p>
            </div>
            <br />
            <div style="border: 1px solid black">

                <p class="Step2">
                    <asp:Label runat="server" Font-Bold="true">2.הכנס שם משתמש וסיסמא:</asp:Label>
                    <br />
                    שם משתמש:
                    <input id="Username" runat="server" type="text" /><br />
                    סיסמא:    
                    <input id="Password" runat="server" type="password" /><br />
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click"
                        Text="Login" />
                    <asp:Label ID="ErrorLabel" runat="Server" ForeColor="Red"
                        Visible="false" />
                </p>
            </div>
            <p></p>
            <asp:Button ID="Button1" runat="server" Text="שכחת סיסמא?" OnClick="btnPasswordRecovery" />

            <p>*במידה ושכחת את הסיסמא שלך נא בחר את אופן הכניסה(פסיכולוג/משתמש) בתחילת העמוד ולאחר מכן על כפתור "שכחת סיסמא". </p>
        </div>

        <% if (!HttpContext.Current.User.IsInRole("Psychologist"))
           { %>
        <div class="col-md-3" id="defalutItem1" style="float: right">
            <h1>הרשמה לאתר</h1>
            <p>
                <a class="btnnn" runat="server" href="UserRegister.aspx">לחץ כאן על מנת להרשם &raquo</a>
            </p>
        </div>
        <%} %>
    </div>
</asp:Content>
