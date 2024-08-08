<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bookar.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
    <div class="row">
        <div class="col-lg-4 mx-auto">
            <div class="card" style="box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.5);">
                <div class="card-body p-5">
                 <h3 class="display-4" align="center">Login</h3>
                           <hr class="my-4">

                    <!-- Pills content -->
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">


                                <!-- Username input -->

                                <div class="form-outline mb-4">
                                <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="Username"/>
                            </div>

                                 <!-- Password input -->
                                 

                            <div class="form-outline mb-4">
                                <asp:TextBox ID="Loginpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" />
                            </div>


                               
                                <!-- Submit button -->
                                <div class="form-outline mb-4">
                             <asp:Button class="btn btn-primary btn-block mb-4" ID="ButtonSignIn" runat="server" Text="Login" OnClick="ButtonSignIn_Click" />
                                    </div>

                                <!-- Register buttons -->
                                <div class="text-center">
                                    <p>Not a member? <a href="Signup.aspx">Register</a></p>
                                </div>
                        </div>
                        <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                            <!-- Registration form goes here -->
                        </div>
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
