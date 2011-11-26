require_relative "Player"
require_relative "Location"

eval File.read('locations.rb')


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