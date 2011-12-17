require_relative "Player"

# choice format:
# how to choose?
# choices dict for each location: choices = {"command" => choice-object, "command2" => choice-object2}

class Choice
  attr_accessor :choice_description, :location_exit, :making_choice_description, :choice_actions
  
  def initialize(choice_description, location_exit, making_choice_description, choice_actions)
    @choice_description = choice_description
    @location_exit = location_exit
    @making_choice_description = making_choice_description
    @choice_actions = choice_actions
  end
  
  def display_choice(command)
    puts "#{command} -- #{@choice_description}" unless @choice_description == ""
  end
  
  def choose
    puts @making_choice_description
    # call the 'actions' proc for the choice
    @choice_actions.call
    if @location_exit == ""
    elsif @location_exit == "thenet"
      thenet(50)
    else
      Player1.change_location(@location_exit)
    end
    
  end
  
end

########################################
########################################
# define the choices dict in the object instantiation

class Location
  attr_accessor :description, :choices
  
  def initialize(description, choices)
    @description = description
    @choices = choices
  end
  
  
  def tell_story
    puts @description
  end
  
  
  def list_choices
    #splits the {"command" => choiceobject} dict and passes the cmd to the display_choice function for the player.
    @choices.each { |cmd, choice|
      choice.display_choice(cmd)
    }
  end
  
  
  def add_choice(is_new_entrance, location_name)
    # called from the editor.  Used for adding choices to create an entry point for a new location,
    # and adding choices to that new location
  
      command = input("What player-input should select this choice?")
      choice_description = input("What description should show up with this command?  To make this a 'secret' command, just leave this blank.")
      if is_new_entrance == "new_entrance"
        location_exit = location_name
      else
        location_exit = input("What location should this choice link to? (leave blank to stay at your current location.)")
      end
      
      
      making_choice_description = input("What should be displayed after the player chooses this?")
  
      @choices[command] = Choice.new(
                  choice_description="#{choice_description}",
                  location_exit="#{location_exit}",
                  making_choice_description="#{making_choice_description}")
      
    
  end
  
  
  def choose_option(userinput)
    if @choices[userinput]
      @choices[userinput].choose
    else
      puts "\nYou're just kidding of course.  You wouldn't #{userinput} -- surely not right now, and definitely not right here.\n\n"
    end
  end
  
end
