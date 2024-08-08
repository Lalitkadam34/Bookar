<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Bookar.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="auto-style1"> Latest Bollywood Movies</h1>
     

   <div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/fighter.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"> <asp:Label ID="Label2" runat="server" Text="Fighter"></asp:Label></h5>
                    
                    <p class="card-text">Shamsher Pathania fulfills his lifelong dream and becomes a member of the Indian air force. As he faces rigorous challenges, Patty must rise above his own limitations to become a true hero..</p>

                  
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/article.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Article 370</h5>
                    <p class="card-text"> Yami Gautam, the protagonist, plays the role of an intelligence agent in the movie, which revolves around the takedown of terrorism in Jammu and Kashmir by abolishing Article 370 which was previously granted special status</p>
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/dune.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Dune 2</h5>
                    <p class="card-text">Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the universe...</p>
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>
    </div>
</div>


        <br />
        <br />
   
   
    <div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/animal.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Animal</h5>
                    <p class="card-text">The son of a wealthy, powerful industrialist returns to India and undergoes a remarkable transformation as he becomes consumed by a quest for vengeance against those threatening his father's life.</p>
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/madame.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Madame Web</h5>
                    <p class="card-text">Cassandra Webb is a New York City paramedic who starts to show signs of clairvoyance. Forced to confront revelations about her past...</p>
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img src="photos/teri%20bat.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Teri Baaton Mein Aisa Uljha Jiya</h5>
                    <p class="card-text">Teri Baaton Mein Aisa Uljha Jiya is a 2024 Indian Hindi-language science fiction romantic comedy starring Shahid Kapoor and Kriti Sanon. </p>
                    <a href="Login.aspx" class="btn btn-primary">Book now</a>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
