<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar2.Master" AutoEventWireup="true" CodeBehind="payments2.aspx.cs" Inherits="Bookar.payments2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      
    <div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <table class="table">
                <tr>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Seat"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Cost"></asp:Label>
                        <asp:RadioButtonList runat="server" AutoPostBack="true" ID="RadioButtonList1">
                            <asp:ListItem Text="1 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 180" Value="Seat1"></asp:ListItem>
                            <asp:ListItem Text="2 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 360" Value="Seat2"></asp:ListItem>
                            <asp:ListItem Text="3 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 540" Value="Seat3"></asp:ListItem>
                            <asp:ListItem Text="4 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 720" Value="Seat4"></asp:ListItem>
                            <asp:ListItem Text="5 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 900" Value="Seat5"></asp:ListItem>
                            <asp:ListItem Text="6 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  Rs 1080" Value="Seat6"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>


    <h2 align="center" class="header">Payment option</h2>
    
    <table align="center">
        <tr>
    <td><asp:Label ID="Label4" runat="server" Text="UPI"></asp:Label></td>
    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </table>
        <br />
        <br />
    <h3 align="center">
 <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click" />


    </h3>
     



</asp:Content>
