using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesHUB
{
    public partial class DashBoard : System.Web.UI.Page
    {
        public int id = 0;
        public List<string> imgPath = new List<string>();
        public List<string> movieName = new List<string>();
        public MoviesData data = new MoviesData();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            imgPath = data.imgPath;
            movieName = data.movieName;

            Homebtn.Click += new EventHandler(HomePage);
            NextMovie.Click += new EventHandler(nextMovie);
            PreviousMovie.Click += new EventHandler(previousMovie);
            for (int i = 0; i <= 9; i++)
            {
                id = i;
                Button movie1 = new Button();
                movie1.CommandArgument = movieName[i];
                movie1.Command += next_page;
                movie1.Width = 180;
                movie1.Height = 180;
                movie1.Style.Add("background-image", "url(" + imgPath[i].ToString() + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "10px");
                movie1.Style.Add("border", "2px solid");
                Panel1.Controls.Add(movie1);
         
            }

            for (int i = 9; i >= 0; i--)
            {
                id = i;
                Button movie1 = new Button();
                movie1.Width = 180;
                movie1.Height = 180;
                movie1.CommandArgument = movieName[i];
                movie1.Command += next_page;
                movie1.Style.Add("background-image", "url(" + imgPath[i].ToString() + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "10px");
                movie1.Style.Add("border", "2px solid");
                Panel2.Controls.Add(movie1);
                
            }
            for (int i = 0; i < 10; i++)
            {
                id = i;
                Button movie1 = new Button();
                movie1.Width = 180;
                movie1.Height = 180;
                movie1.CommandArgument = movieName[i]; ;
                movie1.Command += next_page;
                movie1.Style.Add("background-image", "url(" + imgPath[i].ToString() + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "10px");
                movie1.Style.Add("border", "2px solid");
                Panel3.Controls.Add(movie1);   
            }
            for (int i = 9; i >= 0; i--)
            {
                id = i;
                Button movie1 = new Button();
                movie1.Width = 180;
                movie1.Height = 180;
                movie1.CommandArgument = movieName[i]; ;
                movie1.Command += next_page;
                movie1.Style.Add("background-image", "url(" + imgPath[i].ToString() + ")");
                movie1.Style.Add("background-size", "180px");
                movie1.Style.Add("margin", "0px 10px 0px 10px");
                movie1.Style.Add("border-radius", "10px");
                movie1.Style.Add("border", "2px solid");
                Panel4.Controls.Add(movie1);
            }    
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

        public void nextMovie(object sender, EventArgs e)
        {
            var x = int.Parse(HiddenField1.Value);
            if (x < 9)
            {
                x++;
                HiddenField1.Value = x.ToString();
                MoviesHighLights.Src = imgPath[x];
            }
            else
            {
                x = 0;
                HiddenField1.Value = x.ToString();
                MoviesHighLights.Src = imgPath[x];
            }
            
        }
        public void previousMovie(object sender, EventArgs e)
        {
            var x = int.Parse(HiddenField1.Value);
            if (x > 0)
            {
                x--;
                MoviesHighLights.Src = imgPath[x];
            }
            else
            {
                x = 9;
                MoviesHighLights.Src = imgPath[x];
            }
            
        }
        public void LoginAccount(object sender, EventArgs e)
        {
            //Response.Redirect("LoginForm.aspx");
            //Console.WriteLine("Helosdoss##########################################3");

            //this.Controls.Add(new LoginForm());

           
            //string url = "LoginForm.aspx";
            //string s = "window.open('" + url + "', 'popup_window', 'width=660px,height=640px,left=100,top=100,resizable=yes');";
            //ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
           
            
        }

    }
}