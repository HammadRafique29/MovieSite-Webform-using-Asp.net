<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="MoviesHUB.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="DashBoardStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="TitleBar">
        <div id="container">
            <asp:Button ID="Homebtn" runat="server" type="button" Text="MoviesSite"/>
            <div id="customSearch"><input id="customSearchInput" type="text" /><button id="customSearchImage"><img src="/img/icons/search.png" width="100%" height="100%"/></button></div>
            <button id="SignUpButton" type="button">SignUp</button>
            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginAccount"/>
            <div id="separator"></div>
            <button id="categories" type="button">Categories</button></div></div>


        <div class="HighLight">
            <div id="ImageContainer"><img id="MoviesHighLights" src="/img/movies/Avengers The Infinity War.jpg" runat="server"/></div>

            <div id="HighLightControlsContainer">
                <asp:Button ID="PreviousMovie" cssClass="Controls" runat="server" Text="<" OnClientClick="previousMovie" />
            <asp:Button ID="NextMovie" cssClass="Controls" runat="server" Text=">" OnClientClick="nextMovie" />
            </div>
        </div>
            

        <div class="BodySection">
            <div id="Container">
                <p id="TrendingMoviesMessage">Trending Movies</p>
                <div id="CustomCategoryLayout1">
                    <p class="CustomCategoryLayoutGenre">Action Movies</p>
                    <div id="ScrollBar1" class="ScrollBarLayout" style="margin-left: 5.5%; margin-right: 5.5%;">
                        <div id="Panel1" runat="server" style="overflow-x:scroll; overflow-y:hidden; white-space:nowrap; scrollbar-width:thin; padding-bottom:20px"></div>
                    </div>
                </div>
                

                <div id="CustomCategoryLayout2">
                    <p class="CustomCategoryLayoutGenre">Mystery Movies</p>
                    <div id="ScrollBar2" class="ScrollBarLayout" style="margin-left: 5.5%; margin-right: 5.5%;">
                        <div id="Panel2" runat="server" style="overflow-x:scroll; overflow-y:hidden; white-space:nowrap; scrollbar-width:thin; padding-bottom:20px"></div>
                    </div>
                </div>

                <div id="CustomCategoryLayout3"><p class="CustomCategoryLayoutGenre">Adventure Movies</p>
                    <div id="ScrollBar3" class="ScrollBarLayout" style="margin-left: 5.5%; margin-right: 5.5%;">
                        <div id="Panel3" runat="server" style="overflow-x:scroll; overflow-y:hidden; white-space:nowrap; scrollbar-width:thin; padding-bottom:20px"></div>
                    </div>

                </div>

                <div id="CustomCategoryLayout4"><p class="CustomCategoryLayoutGenre">Fantasy Movies</p>
                    <div id="ScrollBar4" class="ScrollBarLayout" style="margin-left: 5.5%; margin-right: 5.5%;">
                        <div id="Panel4" runat="server" style="overflow-x:scroll; overflow-y:hidden; white-space:nowrap; scrollbar-width:thin; padding-bottom:20px"></div>
                    </div>

                </div>

                <button id="ShowMoreCategoryButton" style="">Show More Genre</button>
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

        <asp:HiddenField ID="HiddenField1" runat="server" Value="0" />
    </form>
</body>
</html>
