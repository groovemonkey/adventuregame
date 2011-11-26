require_relative "Player"
require_relative "Location"

#eval File.read('stuff_to_eval.rb')
##################
##TODO: Testing
##################
Locations = {"testlocation" => Location.new(
        description="you are standing in a test location, looking around at the blank white nothingness.",
        choices = {
          "go to vienna" => Choice.new(
                choice_description="hop on a plane and go to vienna",
                location_exit="vienna",
                making_choice_description="You run to the nearest airport, buy a ticket, and get on a plane to Vienna."
          )
        }

),

"vienna" => Location.new(
        description="you are surrounded by an old, beautiful city.  Yay!",
        choices = {
          "go to testlocation" => Choice.new(
                choice_description="swing back to the nothingness",
                location_exit="testlocation",
                making_choice_description="You suddenly cease to exist in the normal world."
          )
        }

),

# end locations dict
}

# instantiate player global
Player1 = Player.new

#TODO: Debug -- make this a string, and make sure string input can lookup the correct location to go to next.
# looks like change_location will have to take a string as input and do the lookup to see which loc has that name
Player1.change_location("testlocation")

############
## MAIN LOOP
############

playerinput = ""
until playerinput == "quit"
  # give the description from the player's currentlocation
  Player1.currentlocation.tell_story
  Player1.currentlocation.list_choices
  
  # take input
  #TODO: implement the get_player_input function
  print "\n\n"
  playerinput = gets().chomp!
  
  #TODO: handle administrative player input
  
  
  # execute the player's choice
  Player1.currentlocation.choose_option(playerinput)

#end "until" game loop
end