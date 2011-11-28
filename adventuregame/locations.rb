##################
##TODO: Testing
##################
Locations = {"testlocation" => Location.new(
        description="you are standing in a test location, looking around at the blank white nothingness.",
        choices = {
          "go to vienna" => Choice.new(
                choice_description="",
                location_exit="vienna",
                making_choice_description="You run to the nearest airport, buy a ticket, and get on a plane to Vienna."
          ),
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