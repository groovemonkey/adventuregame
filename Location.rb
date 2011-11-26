require_relative "Player"

# choice format:
# how to choose?
# choices dict for each location: choices = {"command" => choice-object, "command2" => choice-object2}

class Choice
  
  def initialize(choice_description, location_exit, making_choice_description)
    @choice_description = choice_description
    @location_exit = location_exit
    @making_choice_description = making_choice_description
  end
  
  def display_choice(command)
    puts "#{command} -- #{@choice_description}"
  end
  
  def choose
    puts @making_choice_description
    Player1.change_location(@location_exit)
  end
  
end

########################################
########################################
# define the choices dict in the object instantiation

class Location
  
  def initialize(description, choices)
    @description = description
    @choices = choices
  end
  
  def tell_story
    puts @description
  end
  
  def list_choices
    #splits the {"command" => choiceobject} dict and passes the cmd to the display_choice function for the player.
    puts "\nWhat would you like to do now?\n\n"
    @choices.each { |cmd, choice|
      choice.display_choice(cmd)
    }
  end
  
  def choose_option(userinput)
    #TODO: add error checking loop, etc
    @choices[userinput].choose
  end
  
end
