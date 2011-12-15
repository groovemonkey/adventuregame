require_relative '../adventuregame/Location'
eval File.read('../adventuregame/content/locations.rb')
#eval File.read('../adventuregame/locations.rb')
Locationfile = '../adventuregame/content/locations.rb'

def input(prompt)
  print "\n\n" +prompt + "\n\n->"
  userinput = gets().chomp!  
end


## USED BY "SAVE"
def write(content)
  open(Locationfile, 'a') do |f|
    f << content
  end
end


def save(dictionary)
  
  #write the beginning of the file:
  write("Locations = {")
    
  # for each location object in the dictionary
  dictionary.each {|cmd,loc|
    
    write("\"#{cmd}\" => Location.new(
        description=\"#{loc.description}\",
        choices = {")
          
          # for each choice:
          loc.choices.each { |cmd, choice|
          write("\"#{cmd}\" => Choice.new(
                  choice_description=\"#{choice.choice_description}\",
                  location_exit=\"#{choice.location_exit}\",
                  making_choice_description=\"#{choice.making_choice_description}\"
            ),")
          }
          # write closing choice bracket
          write("}")
          # write closing location parentheses
          write("),\n\n")
    
    #end .each loop
    }
  
  #finish the location file
  write("\n}")
end


def display_locations
  #i = 1
  Locations.each { |name, object|
    puts name
    #puts i.to_s + "\t"+ name
    #i += 1
  }
end


def add_location
  
  name = input("We're going to add a new location.  What's the name of this location?")
  # show existing locations, ask which location you'd like to be attached to (if any)
  display_locations
  
  attachment_location = input("Choose the location that you'd like to branch from by typing its corresponding name.  Leave this blank to start a new path.")
  # find the chosen location and add a choice to the location
  unless attachment_location == ""
    puts "Now we need to add a choice to your branching location -- a choice that will lead to your NEW location!"
    # add choice takes two arguments: 
    Locations[attachment_location].add_choice("new_entrance", attachment_location)
  end

  description = input("Okay, now we're at the new location.  What description would you like the player to see when they come here?")
  
  # new location with an empty "choices" hash
  built_location = Location.new(
        description="#{description}", {})
          
  #CHOICES
  make_another_choice = ""
  make_another_choice = input("It's time to create your first choice for your new location! Hit enter to continue.")
  until make_another_choice == "no"
    built_location.add_choice("not a new choice", "blah")
    make_another_choice = input("Would you like to create another choice for this location?")
  end


  # save to the Locations hash
  Locations[name] = built_location
  
  #TODO: built_location.save()  #write it to the locations file.  Also do this for the choice-modification above


end



##############
#####MAIN LOOP
##############

choice = input("Hit ENTER to create a new location.  Type 'quit' to exit the editor.")
unless choice == "quit"
    add_location()
    choice = input("Hit ENTER to create a new location.  Type 'quit' to exit the editor.")
# end main until loop
end

# SAVING CHANGES
saveit = input("Would you like to save this location to the location file?")
# maybe add this to the Locations class? (instead of doing it as a function here)
save(Locations) if saveit == "yes"
