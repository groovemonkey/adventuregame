require_relative "Player"
require_relative "Location"

eval File.read('content/locations.rb')
eval File.read('content/thenet.rb')
eval File.read('UI.rb')
eval File.read('daveutils.rb')

# instantiate globals
game_UI = UserInterface.new
$TIME = 50
Player1 = Player.new

# pick starting location
Player1.change_location("viennapub")

############
## MAIN LOOP
############

playerchoice = ""
until playerchoice == "quit"
  # give the description from the player's currentlocation
  Player1.currentlocation.tell_story
  Player1.currentlocation.list_choices
  
  # take input
  playerchoice = input("Now What? (this is being called from the main loop)")
  
    if playerchoice == 'quit'
        #running = false
        break
    
    elsif playerchoice == 'help'
        game_UI.helpmenu
    
    elsif playerchoice == 'time'
        puts "
        
        In a smooth motion that suggests you're simply scratching a small 
        itch behind your ear, you bring up the countdown timer on your 
        Heads-Up Display.  It looks like you've used up about #{$TIME} units of time
        
        "
    #if the player just hits "enter"
    elsif playerchoice == ""
        puts "You have to make a choice."
    
    elsif playerchoice == 'look'
        "You look around."
  
    else
    # execute the player's choice
    Player1.currentlocation.choose_option(playerchoice)
    end


#end "until" game loop
end