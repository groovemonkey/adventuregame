viennapub = Oldlocation.new(id="viennapub",desc="""

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


""",
###north###
n="""

You sit down at the booth and order a stout.  Over the course of twenty 
minutes, you sip it slowly and watch the crowd.  It relaxes you.  There 
are people from all over the world here, mostly young, and all clearly
carefree and enjoying themselves tremendously.  Lively conversations 
surround you.

You feel peaceful.  After your beer, you pay your tab and head back to 
the front of the pub.

""",
###nloc###
nloc='viennapub',


###east###
e="""
You walk downstairs, passing a few people on the way.  You find yourself in 
a small, undecorated room with doors leading from it.  A single 100-Watt bulb
provides flickering illumination for you.

You are alone.
 

""",
###eloc###
eloc='loc2x1',


###south###
s="""

There's nothing here except for a huge room lined with computer terminals,
and the people jacked into them.

""",
###sloc###
sloc='viennapub',


###west###
w="""

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


""",
###wloc###
wloc='thenet',

###commands###
commands={"none"=>["none",["none"]]}


)

#######################################
###########End Of Location############
#######################################

# viennapub-bathroom
loc2x1 = Oldlocation.new(id="loc2x1",desc="""

Looking around, you see a few doors that look promising.

South -- behind you -- are the stairs leading back up to the Pub.

North is the men's bathroom.

East is the women's bathroom.

West is an electrical closet, protected by a rickety-looking keypad.
It looks like it's been used for along time -- a few of the wires have 
been exposed.

""",
###north###
n="""

You take a look around the mens' bathroom.  It's spartan; two urinals and 
a rickety toilet stall.  You don't have to take a leak right now, so you 
head back outside.

""",
###nloc###
nloc='loc2x1',


###east###
e="""

You have an idea.  It seems crazy, and you might get caught, but you do 
it anyway.  Slowly, you peek into the women's room to make sure it's empty. 
Then you step inside.



""",
###eloc###
eloc='loc2x2',


###south###
s="""

You put your hands in your pockets and walk back up the stairs, whistling a 
tune and avoiding eye contact.  Upstairs, you relax and take in your 
surroundings.

""",
###sloc###
sloc='viennapub',


###west###
w="""

The electrical closet looks interesting.

You approach the keypad, looking at it from all angles.  It seems like it was 
once sturdy, but it's been used so much that some wires have come loose.  You 
can't tell if they are electrical or data wires.

Shrugging your shoulders, you step away from the door.

""",
###wloc###
wloc='loc2x1',

###commands##
#you need to be able to "hack keypad" here
commands={"none"=>["none",["none"]]}

)

#######################################
###########End Of Oldlocation############
#######################################

#viennapub women's bathroom
loc2x2 = Oldlocation.new(id="loc2x2",desc="""

You search the bathroom quickly.

There's really nothing in here:

East is an array of sinks with a mirror lining the wall in front of them.

West is the exit -- you should probably get out of here before someone sees you.


""",
###north###
n="""

Nothing, just some empty toilet stalls.  Everything looks worn, and the walls 
have names, phone numbers, and messages scrawled on them -- none of it is even 
remotely intelligible.

""",
###nloc###
nloc='loc2x2',


###east###
e="""
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

""",
###eloc###
eloc='loc2x2',


###south###
s="""

Nothing, just a wall.  Some of the paint has been scratched off over the 
years, revealing brick underneath.

""",
###sloc###
sloc='loc2x2',


###west###
w="""

You think you might hear people outside...time to boogie before anyone sees 
you nosing around the women's bathrooms.  No use in getting your ass kicked 
by some Irish bruiser who's had one too many shots of Jameson.

The door slams shut behind you.  The sound sends a white-hot jolt of 'Holy SHIT!'
up your spine.  On the bright side, now you see that the voices you thought 
you heard aren't from anyone down here. 

Still alone.

""",
###wloc###
wloc='loc2x1',

###commands###

commands={"take datacube"=>["You make a quick scan of the datacube, cloning the data and storing it for later.",["none"]]}

)

#######################################
###########End Of Oldlocation############
#######################################
