using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesHUB
{
    public partial class movieSelection : System.Web.UI.Page
    {
        public int id = 0;
        public MoviesData data = new MoviesData();
        public List<string> imgPath = new List<string>();
        public List<string> movieNames = new List<string>();
        public List<string> movieCasts = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {

            string request = Request.QueryString["movie"];
            setMovieDetails(request);
            imgPath = data.imgPath;
            movieNames = data.movieName;
            movieCasts = data.casts;
            Homebtn.Click += new EventHandler(HomePage);

            for (int i = 0; i < 15; i++)
            {
                id = i;
                Button movie1 = new Button();
                movie1.Width = 180;
                movie1.Height = 180;
                //movie1.CommandArgument = id.ToString();
                //movie1.Command += next_page;
                movie1.Style.Add("background-image", "url(" + movieCasts[i] + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "50%");
                movie1.Style.Add("border", "none");
                movie1.Style.Add("scrollbar-width", "none");
                movie1.Style.Add("padding-bottom", "20px");
                Panel1.Controls.Add(movie1);

            }

            for (int i = 9; i >= 0; i--)
            {
                id = i;
                Button movie1 = new Button();
                movie1.Width = 180;
                movie1.Height = 180;
                movie1.CommandArgument = movieNames[i];
                movie1.Command += next_page;
                movie1.Style.Add("background-image", "url(" + imgPath[i] + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "5px");
                movie1.Style.Add("border", "2px solid");
                movie1.Style.Add("scrollbar-width", "none");
                movie1.Style.Add("padding-bottom", "20px");
                Panel2.Controls.Add(movie1);
            }

        }


        public void setMovieDetails(string name)
        {
            //MovieName.InnerText = movieName[Convert.ToInt32(id)];
            List<string> details = data.movieDetails(name);
            HighLightPoster.Style.Add("content", "url(\"" + details[0] + "\")");
            MoviePosterDetails.Style.Add("content", "url(\"" + details[0] + "\")");
            MoviePosterDetails.Style.Add("height", "420px");
            MovieName.InnerText = details[1];
            movieDuration.InnerText = details[2];
            ImdbRate.Text = details[3];
            movieDes.Text = details[4];
            movieDirecctors.Text = details[5];
            movieWritters.Text = details[6];
            movieCategories.Text = details[7];
            

        }

        public void HomePage(object sender, EventArgs e)
        {
            Response.Redirect("~/DashBoard.aspx");
        }

        public void next_page(object sender, CommandEventArgs e)
        {
            string val = e.CommandArgument.ToString();
            Response.Redirect("~/movieSelection.aspx?movie=" + val);
        }

    }
}