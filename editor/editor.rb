def input(prompt)
  print prompt + "\n\n->"
  userinput = gets().chomp!  
end


def write(content)
  open('wizard.loc', 'a') do |f|
    f << content
  end
end


def locationwizard
  #TODO: scan file for existing location, list their names.  Ask which location this should be branching from.
  
  #LOCATION
  name = input("What's the name of this location?")
  
  #TODO: break the loop
  #if name == "quit"
  #  break
  #end
  
  description = input("What description would you like the player to see when they come to this location?")
  write("\"#{name}\" => Location.new(
        description=#{description},
        choices = {")
          
  #CHOICES
  make_another_choice = ""
  until make_another_choice == "no"
    make_another_choice = input("Would you like to create another choice for this location?")
    break if make_another_choice == "no"

    command = input("What player-input should make this choice?")
    choice_description = input("\n\nWhat description should show up with this command?  To make this a 'secret' command, just leave this blank.")
    
    location_exit = input("\n\nWhat location should this choice link to?  To stay where you are for this choice, just write 'self'.")
      if location_exit == "self"
        location_exit = name
      end
    
    consequence = input("\n\nWhat should the player see as a result of choosing this -- before actually getting to the exit location?")
    
            write("#{command} => Choice.new(
                  choice_description=\"#{choice_description}\",
                  location_exit=\"#{location_exit}\",
                  making_choice_description=\"#{consequence}\"
            )
          }
  
  ),
  ")

#end the choice-creation loop
end


end



##############
#####MAIN LOOP
##############

puts "Welcome to the main menu.  Let's get started!


1. Location Wizard


"

choice = input("What would you like to do?")
until choice == "quit"
  if choice == "1"
    locationwizard()
  end
  
# end main until loop
end
