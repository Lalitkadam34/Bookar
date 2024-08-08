<%@ Page Title="" Language="C#" MasterPageFile="~/Bookkar2.Master" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="Bookar.home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <h1 style="text-align: center; display: block; margin: 0 auto; margin-bottom:20px";>BOOK KAR!</h1>
    <!-- <img src="photos/Logo.jpg" alt="Logo of page" style="display: block; margin: 0 auto; margin-bottom:40px" /> -->

  

<body>
        <head>

                <title>Welcome to Our Movie Booking Website</title>
                <!-- Include necessary CSS files -->
                <link rel="stylesheet" href="styles.css">
                    <style>
                    .carousel-item img 
                    {
                       /* width: 300px; */ /* Set your desired width */ 
                       height: 500px; /* Set your desired height */
                       object-fit: cover; /* Ensure the image covers the specified dimensions */
                     }
                      </style>
          </head>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="photos/Logo.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="photos/sliden.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="photos/madames.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="photos/fighters.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <br/>
    <br/>


    <div class="container">
        <h1>Welcome to our movie booking website!</h1>
        <p>The movie listings feature offers users a comprehensive overview of the current lineup of films showing in theaters. Users can explore a diverse range of movies, each accompanied by captivating posters, enticing titles, intriguing synopses, genre classifications, insightful ratings, and detailed cast information. This feature empowers users to make informed decisions about which movies they want to experience, ensuring they find content that aligns with their interests and preferences.</p>

        <h2>Features:</h2>
        <h3>Movie Listings:</h3>
        <p>Display a comprehensive list of movies showing in theaters, including posters, titles, genres, synopses, ratings, and cast information.</p>

        <h3>Showtime Information:</h3>
        <p>Within the showtime information section, users gain access to the schedules of each movie available for screening. They can conveniently review dates, times, and theater locations, allowing for efficient planning and scheduling of their movie outings. By providing clear and concise showtime details, users can easily identify the most suitable options for their preferred timing and location.</p>

        <h3>Theater Information:</h3>
        <p>This feature offers users valuable insights into the theaters hosting the movies they wish to attend. Detailed theater profiles present users with addresses, contact information, and essential facilities such as parking availability, wheelchair accessibility, and dining options. Additionally, users can explore comprehensive seating arrangements to ensure a comfortable and enjoyable movie-watching experience.</p>

        <h3>Seat Selection:</h3>
        <p>With the seat selection feature, users can visually navigate through a dynamic seating map of the theater. This interactive interface provides real-time updates on seat availability, empowering users to choose their preferred seating arrangements with ease and confidence. By offering intuitive seat selection functionalities, users can secure their desired seats for a seamless and personalized movie-going experience.</p>

        <h3>Booking and Payment:</h3>
        <p>The seamless booking and payment process enables users to effortlessly reserve their desired movie tickets directly within the app. Through secure payment gateways, including credit/debit cards, digital wallets, and trusted platforms like PayPal, users can complete transactions with peace of mind. This streamlined booking and payment workflow ensures a hassle-free and convenient experience for users from start to finish.</p>

        <h3>Booking History:</h3>
        <p>Users benefit from access to their comprehensive booking history, where they can review past and upcoming reservations, delve into ticket details, and obtain payment receipts for their records. This feature enhances user engagement and satisfaction by providing a transparent and accessible overview of their movie-going activities within the app.</p>

        <h3>Notifications:</h3>
        <p>The notifications feature keeps users informed and engaged throughout their movie booking journey. From booking confirmations and reminders about upcoming shows to timely notifications about changes or cancellations in showtimes, users receive relevant updates directly within the app. By delivering timely and personalized notifications, users stay informed and empowered to manage their movie-going experiences effectively.</p>
    </div>
</body>         
</asp:Content>
