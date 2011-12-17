class UserInterface
  "a class that encapsulates general UI tasks.  will eventually also do screen-printing (fitting text to 
  screen size, visually separating blocks of text, etc.  can eventually be used to turn the game into a 
  GUI-game."
  
def helpmenu 

puts "


This is the help menu.

Game Controls:


Working:

north, south, east, west:
             directions for movement
            
quit:        quits game
time:        shows how much game-time you've used
help:        displays this menu
leave:       leaves current location, brings you back to the 'city menu.' not an option in story events.
look:        gives you a description of the area you're in


Planned:

-stats -- in-game stats (skills, health, etc)
-use <object> -- attempts to do something with <object>
-attack <name of person or object to attack> - tries to fight the person.  Default: 'that would be silly'


"
end
  
  
end