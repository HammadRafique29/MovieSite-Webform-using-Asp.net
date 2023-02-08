<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movieSelection.aspx.cs" Inherits="MoviesHUB.movieSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MovieSelection_StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                                                                <!-- Little Section Including Login Signup -->
         <div class="TitleBar">
            <div id="container">
                <asp:Button ID="Homebtn" runat="server" Text="MoviesSite" type="button"/>
                <div id="customSearch"><input id="customSearchInput" type="text" /><button id="customSearchImage"><img src="/img/icons/search.png" width="100%" height="100%"/></button></div>
                <button id="SignUpButton" type="button">SignUp</button>
                <button id="LoginButton" type="button">Login</button>
                <div id="separator"></div>
                <button id="categories" type="button">Categories</button></div></div>

                                                                <!-- HighLight Section Including Movies Details -->
        <div class="HighLight">
            <div id="LeftSection"></div>
            <div id="RightSection"><img id="HighLightPoster" runat="server"/></div>
            <!-- Movie Poster -->
            <div id="MoviePosterDetails" runat="server"></div>
            <!-- Movie Name -->
            <label id="MovieName" runat="server">Movie Name</label>
            <!-- Movie Duration -->
            <div id="Duration">
                    <label class="Duration">Duration</label>
                    <label id="movieDuration" class="Duration" runat="server">1h 24m</label></div>
            <!-- Imdb Rating -->
            <div id="ratingDiv">
                <asp:Image id="ImdbImage" runat="server" src="/img/icons/imdb.png"/>
                <asp:Label ID="ImdbRate" runat="server" Text="7.1"></asp:Label></div>
            <!-- Buttons -->
            <div id="buttonDiv">
                <asp:Button ID="watchButton" CssClass="buttonStyling" runat="server" Text="WatchNow" />
                <asp:Button ID="watchListButton" CssClass="buttonStyling" runat="server" Text="Add to WatchList" /></div>
            <!-- Description -->
            <asp:Label ID="movieDes" runat="server" Text="As students at the United States Navy's elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom."></asp:Label>
            <!-- More Details -->
            <div id="MoreDetails">
               <label id="moreDetailsHeading">More Details</label>
                <div id="writtenBy">
                    <label id="writter" class="labelStyle">Written By: </label>
                    <asp:Label ID="movieWritters" cssClass="inputlabelStyle" runat="server" Text="Jim Cash, Jack"></asp:Label></div>
                <div id="directedBy">
                    <label id="Directed By: " class="labelStyle">Directed By: </label>
                    <asp:Label ID="movieDirecctors" cssClass="inputlabelStyle" runat="server" Text="Tony Scott"></asp:Label></div>
                <div id="movieGenre">
                    <label id="genre" class="labelStyle">Genre: </label>
                    <asp:Label ID="movieCategories" cssClass="inputlabelStyle" runat="server" Text="Drama, Action"></asp:Label></div></div></div>

                                                                <!-- Body Section Including Movies Details -->
        <div id="Body">
            <div id="movieCasting" class="castingStyle">
                <div class="movieCastingmessageDiv"><label class="castingLabel">Movie Casting</label></div>
                <div id="Panel1" runat="server" class="CastPanel" style="overflow-x: scroll;overflow-y: hidden; white-space: nowrap; scrollbar-width:thin; padding-bottom:20px"></div>
               
            </div>
            <div id="relatedMovies" class="castingStyle">
                <div class="movieCastingmessageDiv"><label class="castingLabel">Related Movies</label></div>
                <div id="Panel2" runat="server" class="CastPanel"  style="overflow-x: scroll;overflow-y: hidden; white-space: nowrap; scrollbar-width: thin; padding-bottom:20px"></div>
            </div>
        </div>

        <div class="FooterSection">
            <div id="FooterRow">
                <div id="FooterRowCol1"><p id="AppName">MoviesHUB</p></div>

                <div class="FooterRowCol">
                    <label class="FooterRowHeadings">Categories</label>
                    <a id="ActionCategorie" class="MovieGenre">Action</a>
                    <a id="AdventureCategorie" class="MovieGenre">Adventure</a>
                    <a id="MysteryCategorie" class="MovieGenre">Mystery</a>
                    <a id="CrimeCategorie" class="MovieGenre">Crime</a>
                    <a id="ComedyCategorie" class="MovieGenre">Comedy</a>
                    <a id="DramaCategorie" class="MovieGenre">Drama</a>
                    <a id="HorrorCategorie" class="MovieGenre">Horror</a>
                    <a id="RomanceCategorie" class="MovieGenre">Romance</a>
                    <a id="ThrillerCategorie" class="MovieGenre">Thriller</a>
                    <a id="AnimationCategorie" class="MovieGenre">Animation</a></div>

                <div class="FooterRowCol">
                    <label class="FooterRowHeadings">Features</label>
                    <a class="Features">Free Movies</a>
                    <a class="Features">Free Show</a>
                    <a class="Features">200+ Channels</a>
                    <a class="Features">Pause, Save & Resume</a>
                    <a class="Features">4K Quality</a></div>

                <div  class="FooterRowCol">
                    <label class="FooterRowHeadings">Resources</label>
                    <a class="Resources">Support</a>
                    <a class="Resources">Article</a>
                    <a class="Resources">Forms</a>
                    <a class="Resources">Contact</a>
                    <a class="Resources">Email</a>
                    <a class="Resources">Sitemap</a>
                    <a class="Resources">Questions</a></div>

                <div class="FooterRowCol">
                    <label class="FooterRowHeadings">Download</label>
                    <a class="Download">For Desktop</a>
                    <a class="Download">For Mobile</a>
                    <a class="Download">For TV</a>
                    <a class="Download">For Console</a></div>

                <div id="FooterRowCol6" class="FooterRowCol"></div>
            </div>

            <div id="FooterSecurityRow">
                <div id="SecurityBlocks">
                    <a id="Copyright" class="SecurityAnchor">CopyRight 2022</a>
                    <a id="Privacy" class="SecurityAnchor">Privacy & Lagals</a>
                    <a id="Accessibility" class="SecurityAnchor">Accessibilty</a></div>
                
                <div id="FooterDecurityEmpyDiv1" class="SecurityAnchor"></div>
                <button type="button" id="FBMedia" class="SocialMedia"><img src="/img/icons/facebook.png" style="width:100%; height:100%"/></button>
                <button type="button" id="InstaMedia" class="SocialMedia"><img src="/img/icons/instagram.png" style="width:100%; height:100%"/></button>
                <button type="button" id="TwitterMedia" class="SocialMedia"><img src="/img/icons/twitter.png" style="width:100%; height:100%"/></button>
                <button type="button" id="YoutubeMedia" class="SocialMedia"><img src="/img/icons/youtube.png" style="width:100%; height:100%"/></button>
                <div id="FooterDecurityEmpyDiv2"></div>
            </div>
            <div id="FooterEmptyRow"></div>
        </div>


    </form>
</body>
</html>
