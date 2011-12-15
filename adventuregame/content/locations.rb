Locations = {"testlocation" => Location.new(
        description="you are standing in a test location, looking around at the blank white nothingness.",
        choices = {"go to vienna" => Choice.new(
                  choice_description="You go to vienna",
                  location_exit="thenet",
                  making_choice_description="You run to the nearest airport, buy a ticket, and get on a plane to Vienna."
            ),}),

"vienna" => Location.new(
        description="you are surrounded by an old, beautiful city.  Yay!",
        choices = {"go to testlocation" => Choice.new(
                  choice_description="swing back to the nothingness",
                  location_exit="testlocation",
                  making_choice_description="You suddenly cease to exist in the normal world."
            ),"go to the countryside" => Choice.new(
                  choice_description="head out to the 'wink",
                  location_exit="rekawinkel",
                  making_choice_description="you drive out into the countryside"
            ),}),

"rekawinkel" => Location.new(
        description="it's gorgeous!  You're on a huge meadow, facing a large old stone house.",
        choices = {"enter house" => Choice.new(
                  choice_description="try to enter the old house",
                  location_exit="",
                  making_choice_description="you try entering the old house, but find all entrances locked tight."
            ),"frolick" => Choice.new(
                  choice_description="",
                  location_exit="",
                  making_choice_description="you frolick on the meadow!"
            ),"drive to city" => Choice.new(
                  choice_description="you drive back to vienna, refreshed after your jaunt to the countryside.",
                  location_exit="vienna",
                  making_choice_description="you drive back to the city, refreshed after your jaunt to the countryside."
            ),}),


}