using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MoviesHUB
{
    public class MoviesData
    {
        public int id = 0;
        public List<string> imgPath = new List<string>(10) { 
            "/img/movies/Sparks.jpg", 
            "/img/movies/Man of the West.jpg", 
            "/img/movies/Walking Tall.jpg", 
            "/img/movies/White Wall.jpg", 
            "/img/movies/Wheels on Meals.jpg", 
            "/img/movies/Avatar.jpg", 
            "/img/movies/Avengers The Infinity War.jpg", 
            "/img/movies/Joker.jpg", 
            "/img/movies/Spider-Man No Way Home.jpg", 
            "/img/movies/Top Gun.jpg" };
        public List<string> movieName = new List<string>(10) { 
            "Sparks", 
            "Man of the West", 
            "Walking Tall", 
            "White Wall", 
            "Wheels on Meals", 
            "Avatar", 
            "Avengers The Infinity War", 
            "Joker", 
            "Spider-Man No Way Home", 
            "Top Gun" };
        public List<string> duration = new List<string>(10) { 
            "1 hr 37 min", 
            "1 hr 40 min", 
            "2 hr 5 min", 
            "1 hr 35 min", 
            "1 hr 48 min", 
            "2 hr 42 min", 
            "2 hr 29 min", 
            "1 hr 48 min", 
            "2 hr 5 min", 
            "1 hr 48 min" };
        public List<string> rating = new List<string>(10) { 
            "5.4", 
            "7.1", 
            "6.9", 
            "4.0", 
            "7.0", 
            "7.8", 
            "8.4", 
            "7.8", 
            "8.3", 
            "8.4" };
        public List<string> descritption = new List<string>(10) { 
            "A masked vigilante who discovers the dark side to heroism. Going after the nation's most notorious super criminal leaves Sparks' life and reputation in ruins.", 
            "On his way to hire a schoolteacher, a homesteader is left a hundred miles from anywhere when the train he is on is robbed. With him are an attractive dancehall girl and an untrustworthy gambler and he decides to get shelter nearby from outlaw relatives he used to run with. They don't trust ...",
            "Based on the life of Tennessee sheriff Buford Pusser, who almost single-handily cleaned up his small town of crime and corruption, but at a personal cost of his family life and nearly his own life.", 
            "Set in a wasteland enclosed by a large white wall, the last survivor from a brutal child internment camp reluctantly takes on one final bounty hunting job to protect the idyllic life he has rebuilt.", 
            "Two Chinese friends, who operate a food truck in Barcelona, Spain, use their martial arts expertise to help their private investigator friend protect the pickpocket Sylvia, who's been targeted by a ruthless gang.", 
            "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.", 
            "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.", 
            "Arthur Fleck works as a clown and is an aspiring stand-up comic. He has mental health issues, part of which involves uncontrollable laughter. Times are tough and, due to his issues and occupation, Arthur has an even worse time than most. Over time these issues bear down on him, shaping his ", 
            "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.", 
            "As students at the United States Navy's elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom." };
        public List<string> directors = new List<string>(10) { 
            "Christopher Folino, Todd Burrows", 
            "Anthony Mann", 
            "Phil Karlson", 
            "James Boss", 
            "Sammo Hung", 
            "James Cameron", 
            "Anthony Russo, Joe Russo", 
            "Anthony Russo, Joe Russo", 
            "James Boss", 
            "Anthony Mann" };

        public List<string> writers = new List<string>(10) { 
            "Christopher Folino", 
            "Reginald Rose, Will C. Brown", 
            "Mort Briskin, Michael Donovan", 
            "Vivian Kyinn", 
            "Edward Tang Ging-Sang, Johnny Lee Kwing-Kai", 
            "James Cameron", 
            "Christopher Markus, Stephen McFeely, Jack Kirby, Jim Starlin", 
            "James Cameron", 
            "Christopher Folino", 
            "Christopher Markus, Stephen McFeely, Jack Kirby, Jim Starlin" };

        public List<string> movieGenre = new List<string>(10) { 
            "Sci-Fi, Thriller, Action", 
            "Action, Western, Romance, Drama", 
            "Action, Crime, Drama, Thriller, Biography", 
            "Action, Drama, Fantasy, Sci-Fi, Thriller, Mystery", 
            "Romance, Action, Comedy, Crime", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy" };

        public List<string> genre = new List<string>(10) { 
            "Sci-Fi, Thriller, Action", 
            "Action, Western, Romance, Drama", 
            "Action, Crime, Drama, Thriller, Biography", 
            "Action, Drama, Fantasy, Sci-Fi, Thriller, Mystery", 
            "Romance, Action, Comedy, Crime", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy", 
            "Action, Adventure, Sci-Fi, Fantasy" };
        public List<string> casts = new List<string>(15) { 
            "/img/casts/1.png",
            "/img/casts/2.png",
            "/img/casts/3.png",
            "/img/casts/4.png",
            "/img/casts/5.png",
            "/img/casts/6.png",
            "/img/casts/7.png",
            "/img/casts/8.png",
            "/img/casts/9.png",
            "/img/casts/10.png",
            "/img/casts/11.png",
            "/img/casts/12.png",
            "/img/casts/13.png",
            "/img/casts/14.png",
            "/img/casts/15.png",};

        public List<string> movieDetails(string val){
            int i = -1;
            foreach (var name in movieName){
                i++;
                if (name == val){
                    List<string> details = new List<string>(8) {  imgPath[i], movieName[i], duration[i], rating[i], descritption[i], directors[i], writers[i], genre[i] };
                    return details;}}
            return null;}
    }
    
}