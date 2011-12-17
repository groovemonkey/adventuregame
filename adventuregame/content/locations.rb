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
                  location_exit="viennapub",
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
            
"viennapub" => Location.new(
        description="

You are standing in an Irish Pub, filled with people.

Everything seems to have been made of wood, and then coated with a thick, 
dark varnish.  The bartenders, waitresses, and customers are all speaking 
English with an Irish accent. You can even see Celtic written on the walls. 
Even though you were expecting a lot of things, authenticity wasn't one of 
them.  It's a pleasant surprise.

The pub's bar is already filled with people, but there are a few small tables 
that haven't been occupied by members of Vienna's massive, international 
student population.  This is a cozy place.

Over the low roar, you can hear people calling out for rounds of Magners 
and Guiness.  You can disappear in this place, even if only for a short time.


South is the exit -- a big wooden door, looking simple and sturdy.  It 
leads back out to Vienna's ancient first district.

West is a computer terminal that looks like it doesn't get used much.

East leads downstairs.  You can see the international 'restroom' signs
pointing down.

North, along the wall leading up to the bar, is a private booth; the 
perfect place to have a quiet drink.


",
        choices = {"north" => Choice.new(
                  choice_description="sit in a booth",
                  location_exit="viennapub",
                  making_choice_description="

You sit down at the booth and order a stout.  Over the course of twenty 
minutes, you sip it slowly and watch the crowd.  It relaxes you.  There 
are people from all over the world here, mostly young, and all clearly
carefree and enjoying themselves tremendously.  Lively conversations 
surround you.

You feel peaceful.  After your beer, you pay your tab and head back to 
the front of the pub.

"
            ),"east" => Choice.new(
                  choice_description="go downstairs",
                  location_exit="loc2x1",
                  making_choice_description="
                  
You walk downstairs, passing a few people on the way.  You find yourself in 
a small, undecorated room with doors leading from it.  A single 100-Watt bulb
provides flickering illumination for you.

You are alone.

"
            ),
            "south" => Choice.new(
                  choice_description="Exit",
                  location_exit="vienna",
                  making_choice_description="

You head out the front door, into the streets of vienna.  It is night, and there is a cool, dewy smell in the air.

"
            ),
            "west" => Choice.new(
                  choice_description="jack into the net",
                  location_exit="thenet",
                  making_choice_description="

The terminal is located in a small booth, which gives you some measure of 
privacy.  Not that anyone around you can see what youre doing on the net; your 
Heads-Up Display, and any data it displays, are just electrical impulses that
are sent through the jack into your brain, to trick your mind into 'seeing''...
or 'intuiting'' -- you're not sure how it works -- the information that you're 
navigating.

As you slip the jack into the small hole at the back of your neck, you 
momentarily experience the sensation of weightlessness.

Then, another layer of information flows down over what your eyes are taking in.

You're jacked into the net.


"
            ),}),
            
"loc2x1" => Location.new(
        description="

Looking around, you see a few doors that look promising.

South -- behind you -- are the stairs leading back up to the Pub.

North is the men's bathroom.

East is the women's bathroom.

West is an electrical closet, protected by a rickety-looking keypad.
It looks like it's been used for along time -- a few of the wires have 
been exposed.

",
        choices = {"north" => Choice.new(
                  choice_description="check men's bathroom",
                  location_exit="loc2x1",
                  making_choice_description="

You take a look around the mens' bathroom.  It's spartan; two urinals and 
a rickety toilet stall.  You don't have to take a leak right now, so you 
head back outside.

"
            ),"east" => Choice.new(
                  choice_description="check women's bathroom",
                  location_exit="loc2x2",
                  making_choice_description="

You have an idea.  It seems crazy, and you might get caught, but you do 
it anyway.  Slowly, you peek into the women's room to make sure it's empty. 
Then you step inside.


"
            ),
            "south" => Choice.new(
                  choice_description="go back upstairs",
                  location_exit="viennapub",
                  making_choice_description="

You put your hands in your pockets and walk back up the stairs, whistling a 
tune and avoiding eye contact.  Upstairs, you relax and take in your 
surroundings.

"
            ),
            "west" => Choice.new(
                  choice_description="examine keypad",
                  location_exit="loc2x1",
                  making_choice_description="

The electrical closet looks interesting.

You approach the keypad, looking at it from all angles.  It seems like it was 
once sturdy, but it's been used so much that some wires have come loose.  You 
can't tell if they are electrical or data wires.

Shrugging your shoulders, you step away from the door.

"
            ),}),
            
"loc2x2" => Location.new(
        description="

You search the bathroom quickly.

There's really nothing in here:

East is an array of sinks with a mirror lining the wall in front of them.

West is the exit -- you should probably get out of here before someone sees you.


",
        choices = {"north" => Choice.new(
                  choice_description="",
                  location_exit="loc2x2",
                  making_choice_description="

Nothing, just some empty toilet stalls.  Everything looks worn, and the walls 
have names, phone numbers, and messages scrawled on them -- none of it is even 
remotely intelligible.

"
            ),"east" => Choice.new(
                  choice_description="examine sinks",
                  location_exit="loc2x2",
                  making_choice_description="
You walk over to the sinks and stare at yourself in the mirror.  You look tired.

You rub your eyes, feeling the weight of recent events pushing down on you.

As you're about to step away from the sink, your eye catches something in 
the mirror.  A faint blue glow can be seen from behind one of the faucets.

Inspecting it from afar, you see that it's a small, translucent chip, about the 
size of a fingernail.  It is glowing with a cool blue light.  You can faintly 
make out intricate squiggles floating inside.  A datacube! 

Not really a cube, unless your definition of 'cube' is something along the 
lines of born as a cube and then flattened a bit.  Close enough.

You take a step back, and decide what to do next.

"
            ),
            "south" => Choice.new(
                  choice_description="",
                  location_exit="loc2x2",
                  making_choice_description="

Nothing, just a wall.  Some of the paint has been scratched off over the 
years, revealing brick underneath.

"
            ),
            "west" => Choice.new(
                  choice_description="leave bathroom",
                  location_exit="loc2x1",
                  making_choice_description="

You think you might hear people outside...time to boogie before anyone sees 
you nosing around the women's bathrooms.  No use in getting your ass kicked 
by some Irish bruiser who's had one too many shots of Jameson.

After you make it out of the bathroom, the door slams shut behind you.  The 
sound sends a white-hot jolt of 'Holy SHIT!' up your spine.  On the bright 
side, now you see that the voices you thought you heard aren't from anyone 
down here. 

Still alone.

"
            ),
            
"west" => Choice.new(
                  choice_description="take datacube",
                  location_exit="loc2x1",
                  making_choice_description="You make a quick scan of the datacube, cloning the data and storing it for later."
          ),}),
            
            
}