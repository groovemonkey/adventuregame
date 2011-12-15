Locations = {"testlocation" => Location.new(
        description="you are standing in a test location, looking around at the blank white nothingness.",
        choices = {"go to loc1" => Choice.new(
                  choice_description="You go to vienna",
                  location_exit="loc1",
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

"loc1" => Location.new(
        description="

You are standing in an overcrowded Hong Kong Cybercafe.
Waitresses are doing the best they can to keep up with
demand for drinks, and you are secretly thankful that you
didn't come here for the booze.

East is the exit -- a large doorway decorated in red and gold,
                    leading out into the Hong Kong night.

West is a computer terminal -- exactly what you're looking for.

",
        choices = {"north" => Choice.new(
                  choice_description="",
                  location_exit="loc1",
                  making_choice_description="

There's nothing here except for a huge room lined with computer terminals,
and the people jacked into them.

"
            ),"east" => Choice.new(
                  choice_description="exit to city",
                  location_exit="hongkong",
                  making_choice_description="
You slowly make your way through the crowd, eventually reaching the exit.
The warm night air feels good on your face, even though the smell could be
better.

You're back in the city.

"
            ),
            "south" => Choice.new(
                  choice_description="",
                  location_exit="loc1",
                  making_choice_description="

There's nothing here except for a huge room lined with computer terminals,
and the people jacked into them.

"
            ),
            "west" => Choice.new(
                  choice_description="log on to the net",
                  location_exit="thenet",
                  making_choice_description="

You sit down at the empty computer terminal, make sure the connectors are
clean, and jack into the Net.  A familiar rush washes over you, and the
noise of the Cyber-Cafe crowds disappears.

"
            ),}),
            
}