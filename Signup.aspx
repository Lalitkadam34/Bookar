<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Bookar.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container py-5">
     <div class="row">
         <div class="col-lg-6 mx-auto"> <!-- Increased column size for wider form -->
             <div class="card" style="box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.5);">
                 <div class="card-body p-5">
                     <h3 class="display-4" align="center">Signup</h3>
                     <hr class="my-4">
                         <div class="form-group mb-4">
                             <label>Full Name</label>
                             <asp:TextBox CssClass="form-control" ID="TextBoxFname" runat="server"></asp:TextBox>
                         </div>

                         <div class="form-group mb-4">
                             <label>Email</label>
                             <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group mb-4">
                             <label>Username</label>
                             <asp:TextBox CssClass="form-control" ID="TextBoxUsername" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group mb-4">
                             <label>Password</label>
                             <asp:TextBox CssClass="form-control" ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                         </div>
                       
                         <div class="form-group pt-1 mb-4">
                             <asp:Button class="btn btn-primary btn-block mb-4" ID="ButtonSignUp" runat="server" Text="Register" OnClick=" ButtonSignUp_Click" />
                         </div>

                     <div class="text-center">
                         <p>Already a member? <a href="Login.aspx">Login</a></p>
                     </div>
                 </div>
             </div>
             <div class="text-center mt-3">
                 <a href="home.aspx"><< Back to Home</a>
             </div>
         </div>
     </div>
 </div>
</asp:Content>
