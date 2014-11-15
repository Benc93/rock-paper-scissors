# End of Week 3 Challenge - Rock Paper Scissors

###Programs, Languages and Technologies used
    
+ Ruby
+ RSpec
+ Sinatra 
+ Cucumber   
+ Heroku      
    
##Briefing
   
The aim is to write an app that is based on the old classic: "Rock, Paper, Scissors". This app is to be web based.    
This will be hosted via Heroku, making use of the Sinatra framework. Unlike the previous challenges, which only required unit testing - this piece of software should be written "outside-in". Starting with broad definitions of the features and scenarios using Cucumber tests, and ultimately moving down to unit testing using the now familiar 'rspec'. 

The challenge conditions are as follows: 

1. A player has to enter their name before the game.  
2. A player will be presented the choices (rock, paper and scissors)
3. A player can choose one option
4. The game will choose a random option
5. A winner will be declared
6. Bonus functionality:    
  1.  A two-player version of the game.   
  2.  An extension of the game [using these rules](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock)    

##Analysis

As mentioned, this is the first attempt at 'Outside-In' test driven development. Instead of rushing for the CRC cards, I set out to write 'Features' at the highest level of the task, and from the perspective of the user:

1. A user should land on the homepage, and be invited to enter their name. 
2. Once submitting their name, a user moves to a page where they can select & submit either "Rock", "Paper" or Scissors". 
3. A user should move to the final page, which informs them of the computer's selection, and whether the result of the game is a WIN or a LOSS. 
4. A user should be able to play again.
   


