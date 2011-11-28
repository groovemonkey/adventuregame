Locations = {"testlocation" => Location.new(
        description="you are standing in a test location, looking around at the blank white nothingness.",
        choices = {"go to vienna" => Choice.new(
                  choice_description="You go to vienna",
                  location_exit="vienna",
                  making_choice_description="You run to the nearest airport, buy a ticket, and get on a plane to Vienna."
            ),"enter mines" => Choice.new(
                  choice_description="enter the mines of moria",
                  location_exit="",
                  making_choice_description="you go to moria"
            ),}),

"vienna" => Location.new(
        description="you are surrounded by an old, beautiful city.  Yay!",
        choices = {"go to testlocation" => Choice.new(
                  choice_description="swing back to the nothingness",
                  location_exit="testlocation",
                  making_choice_description="You suddenly cease to exist in the normal world."
            ),}),

"moria" => Location.new(
        description="its scary dude",
        choices = {"go to space" => Choice.new(
                  choice_description="go to space",
                  location_exit="",
                  making_choice_description="you go to space"
            ),"go to schnaaburg" => Choice.new(
                  choice_description="head over to the small town of Schnaaburg",
                  location_exit="go to schnaaburg",
                  making_choice_description="you try to go to schnaaburg, but can't."
            ),}),

"schnaa" => Location.new(
        description="now you're in space!",
        choices = {"look around" => Choice.new(
                  choice_description="you look around",
                  location_exit="",
                  making_choice_description="you're looking around.  earth looks amazing."
            ),}),

"schnaaburg" => Location.new(
        description="this shouldnt apply.",
        choices = {}),


}