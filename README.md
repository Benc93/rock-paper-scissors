# End of Week 3 Challenge - Rock Paper Scissors

###Programs, Languages and Technologies used
    
+ Ruby
+ HTML
+ RSpec
+ Sinatra 
+ Capybara
+ Cucumber   
+ Heroku  
+ Rackup
    
##Briefing
   
The aim is to write an app that is based on the old classic: "Rock, Paper, Scissors". This app is to be web based.    
This will be hosted via **Heroku**, making use of the **Sinatra** framework. Unlike the previous challenges, which only required unit testing - this piece of software should be written "outside-in". Starting with broad definitions of the features and scenarios using **Cucumber** tests, and ultimately moving down to unit testing using the now familiar 'rspec'. 

The challenge conditions are as follows: 

1. A player has to enter their name before the game.  
2. A player will be presented the choices (rock, paper and scissors)
3. A player can choose one option
4. The game will choose a random option
5. A winner will be declared
6. Bonus functionality:    
  1.  A two-player version of the game.   
  2.  An extension of the game [using these rules](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock)    

##Execution  
      
###Analysis & Initial Build Stages
       
As mentioned, this is the first attempt at 'Outside-In' test driven development. Instead of rushing for the CRC cards, I set out to write 'Features' at the highest level of the task, and from the perspective of the user:
      
1. A user should land on the homepage, and be invited to enter their name. 
2. Once submitting their name, a user moves to a page where they can select & submit either "Rock", "Paper" or Scissors". 
3. A user should move to the final page, which informs them of the computer's selection, and whether the result of the game is a WIN or a LOSS. 
4. A user should be able to play again, after viewing the game's result.   
     
Next task was to build a simple file structure with the help of the gemfile: **cucumber-sinatra**, then adding the features metioned above to the features file and running cucumber in the terminal.   
     
Next, was using the cucumber test suggestions as a framework for the step definitions required for **Capybara** testing. This was the point where I built and tested the initial web pages, using **HTML** and testing using **rackup & capybara**. When I reached a point where some game logic was required - I moved into some... 
     
###Unit Testing     
     
I identified 3 classes required for the Ruby-based game logic: **Player, Computer, Game**.   
       
This is of course a very simple domain structure, in which PLAYER and COMPUTER collaberate with GAME. PLAYER is assigned a choice (rock, paper, or scissors) using input parameters from the website. COMPUTER generates a random choice within the class using the 'sample' method and a simple array.  GAME takes both classes, and their choices to run a simple matcher that determines a WIN for either PLAYER or COMPUTER, or in 1 case out of 3, a DRAW. The building of these ruby files involved **RSPEC** testing as located in the spec folder.  
      
###Linking Game Logic to the Web App
     
So far, I'd built the pre-game stages of the website, and the game logic to determine the result of the game.   
     
Next stage was to link the posted information from the website into the Ruby files that produced a game result and then return that result on to a new page for the web user to view. This was acheived using **Capybara** and **Rackup** to experiment in a local environment. This proved time consuming, grappling with **Capybara** and reconciling a new programming language (HTML) with Ruby. 
     
After a decent amount of fine tuning, debugging and test management, the app could take a player name and their choice, run it through the game logic and return a valid result that was displayed on a new web page.    
     
###Publishing the App
     
With a **Minimum Viable Product** in place on GitHub and on my local repository - it was time to publish to the web. Having installed **Heroku** during the previous week's exercise, I set up a new domain in **Heroku** and pushed my work to the master branch. I tested the site online in a similar manner to way I did using the local port.  
     
###Adding Media & possible improvement/expansion
     
With the minimum specifications of the challenge met, I added a few extra images to make the results page slightly more interesting and humourous. Possible future work might include:
     
+ Addition of a Two Player Version.   
+ Addtional Game rules using 'Spock' and 'Lizard'. 
+ Reiterate the **Capybara** tests to increase coverage and accuracy.   
+ Some use of **CSS** to make the site aesthetically pleasing.   
      
     
**END**
