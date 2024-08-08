<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar2.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Bookar.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h2>Orders</h2>
        <div class="card text-center">
            <div class="card-header">
                <h4 class="card-title">Your ticket has been booked!</h4>
            </div>
            <div class="card-body">
                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                <!-- Display the movie name -->
                <p class="card-text">Movie Name: <%= Session["MovieName"] %></p>
                <!-- Display the seat numbers -->
                <p class="card-text">Seat Numbers: <%= Session["SelectedSeats"] %></p>
                <!-- Display the amount -->
                <p class="card-text">Amount: <%= Session["Amount"] %></p>
                <!-- Display the UPI ID -->
                <p class="card-text">UPI ID: <%= Session["UpiId"] %></p>
            </div>
            <div class="card-footer text-muted">
                Enjoy the movie!
            </div>
        </div>
    </div>
</asp:Content>
