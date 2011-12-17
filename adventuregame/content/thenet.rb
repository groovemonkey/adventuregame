$has_new_email = 0
emaildict = ""

## Message class -- TODO: implement DATE received -- grab from main game when @unlocked becomes true
class Message
    def initialize(id, senderemail, sendername, subj, body, unlocked=false)
        @id = id
        @senderemail = senderemail
        @sendername = sendername
        @subj = subj
        @body = body
        @unlocked = unlocked
    end
        
# class end
end
    
## test message
mesg1 = Message.new(
id="1",
senderemail="dcohen@sensenet.ny.r12.com",
sendername = "Dave Cohen",
subj="test message 1",
body="If you're getting this, we're already running out of time.

The bad guys are on to me, but if you keep programming this game,
I think we'll be OK.  I'll contact you again when I can.
",
unlocked=true
)

$messagelist = [mesg1]


## Newsitem class
class Newsitem
  attr_accessor :id, :date, :headline, :body
    def initialize(id, date, headline, body)
        @id = id
        @date = date
        @headline = headline
        @body = body
    end

# class end
end
        
newsitem1 = Newsitem.new(
id = "1",
date="5",
headline = "test newsitem 1 - time-5",
body = "
ApostleCorp has just announced a ten-year, $500,000,000 deal with UNATCO.

Some have speculated that the 'training supplies' named in the deal are
really high-tech energy weapons, but neither organization has come forward
with details.

We can only speculate, but UNATCO has been moving towards weapons development
for some time now.
"
)

$newslist = {1 => newsitem1}


## Dossier Class
class Dossier
    def initialize(id, title, knowable_list, full_dossier, unlocked=false)
        @id = id
        @title = title
        @knowable_list = knowable_list
        @full_dossier = full_dossier
        @unlocked = unlocked
    end

# class end
end


testdossier = Dossier.new(
id = "1",
title = "David Cohen -- Boston, MA",
knowable_list = ["David Cohen","549 Main Street","529-2345-234521","groovemonkey","RIC International"],
full_dossier = "\n\nthis is the full dossier.  Nice job unlocking it!\n\n",
unlocked = true
)

dossier2 = Dossier.new(
id = "2",
title = "Hannah Cohen -- Oakland, CA",
knowable_list = ["hannah cohen","907 glendome","923-7758-234912","schnuckles","hannahnaomi"],
full_dossier = "\n\nHannah is a highly skilled operative specializing in jewelery design and hand-to-hand combat.  She is not to be misunderestimated.\n\n",
unlocked = false
)

# dossier-list
dossierlist = {"1" => testdossier,"2" => dossier2}

## Strings that I'll be using often...

$home_screen = "

------------------------------------------------------------------
| home | mail | research
 ------


                    Select:
                        
                        
                        (mail)
                        
                        (news)
                        
                        (research)
                        
                        (hack)




    type 'logoff' to exit the terminal.


"
$mail_screen_nomail = "

------------------------------------------------------------------
 home  | mail | research
        ------

    |You have no new messages.  To read mail, use the
    |'read' command.



    |To send a new message, type
    |
    |'send'

    
    
    
    |Type 'exit' to return to the home screen.

------------------------------------------------------------------

> "

$mail_screen_hasmail = "

------------------------------------------------------------------
 home  | mail | research
        ------

    |You have 1 or more unread messages.  To read mail, use the
    |'read' command.



    |To send a new message, type
    |
    |'send'

    
    
    
    |Type 'exit' to return to the home screen.

------------------------------------------------------------------

> "

research_screen_header = "--------------------------------------
home  | mail | research |
              ---------"



##################################################################
# research loop
def do_research
    #display dossier list (unlocked dossiers only)
    dossierchoice = "None"
    while dossierchoice.downcase != "exit"
        puts(research_screen_header)
        puts("\n\nID   Dossier\n")
        for key in dossierlist
            ##puts("DEBUG - this is the current dossierlist key" + str(dossierlist[key]))
            ##puts("DEBUG - its unlocked state is " + str(dossierlist[key].unlocked))
            # for all unlocked dossiers, puts the ID and Title to the list
            if dossierlist[key].unlocked == true
                puts(dossierlist[key].id + "    " + dossierlist[key].title)
            end
        end
                
        # TODO: Can I break this out of the current loop??  Cleaner?
        #get input -- dossier # or "research"
        puts "\n\nEnter the ID of the dossier you want to read.\nTo compile a new dossier on someone, type 'new'.  To exit, type 'exit'.\n\n>"
        dossierchoice = gets().downcase.chomp!
        
        # if player chooses an empty string, return to main menu
        if dossierchoice == ""
            break
        
        #if research, start the research wizard
        elsif dossierchoice == "new"
            #get the knowable items
            puts "Enter the first and last name of the person you're looking for:\n\n>"
            name = gets().downcase.chomp!
            puts "Enter the street address, in the format <123 Main Street>\n\n>"
            address = gets().downcase.chomp!
            puts "Enter the OneWorld Safety ID\n\n>"
            ssn = gets().downcase.chomp!
            puts "Enter the SocialNet ID/e-mail of the person, if known\n\n>"
            socialnet = gets().downcase.chomp!
            puts "Enter an employer for the person you're searching for.\n\n>"
            employer = gets().downcase.chomp!
            
            playerlist = [name, address, ssn, socialnet, employer]
            
            
            for key in dossierlist
                workinglist = dossierlist[key].knowable_list.dup
                ## TODO: come up with a message that tells you when you've failed to build a dossier                
                #initialize the counter
                correct = 0
                for item in playerlist
                    if workinglist.include? item
                        correct += 1
                        # if we get 3 correct, we're looking at the right dossier
                        if correct >= 3
                            # if it's already been unlocked, tell the player
                            if dossierlist[key].unlocked == true
                                puts("\n\nThankfully you didn't spend too much time looking into this -- turns out, you already have a dossier on this person!  It's " + dossierlist[key].title + "!\n\n")
                            else
                                puts("After working for several hours, you manage to put together a dossier.\n\n")
                                #unlock the currently selected dossier
                                dossierlist[key].unlocked = true
                                #show the currently selected dossier
                                puts("\n\n" + dossierlist[key].full_dossier + "\n\n")
                            end
                       end
                    end
                end
            end
            
            
        # otherwise it's a dossier ID # --> get the corresponding dossier
        else
            for key in dossierlist
                if dossierchoice == key
                    puts("\n\nDossier Selected:  " + dossierlist[key].title)
                    puts(dossierlist[key].full_dossier + "\n\n\n")
                end
            end
        end
#while end
end
# def end
end
        
#######################################

# news loop -- TODO: by current date?
def check_news()
    #TODO is this stupid?  Globals?
    newslist = $newslist
    time_left = $time_left
    readchoice = "None"
    while readchoice.downcase != "exit"
        puts("ID   Headline\n")
        for key, value in newslist
            #list only news items that have already happened.  -- TODO: modify date format
            if key.to_i < time_left.to_i
                
                # display the newsitem ID and headline, side-by-side, for each news item
                puts(newslist[key].id + "    " + newslist[key].headline)#TODO: sort by date
            end
        #end for loop
        end
                
        puts "\n\nEnter the ID of the news item you want to read.\nTo exit, type 'exit'.\n\n>"
        readchoice = gets().downcase.chomp!
                
        # if the player hits the ENTER key without selecting a newsitem, he goes back the home screen
        if readchoice.empty?
                    break
                
        # otherwise take the input, find the corresponding key, and get the news-object for that key
        else
          for key, value in newslist
            if key.to_s == readchoice
                            
                            # puts the date, headline, and body of the newsitem -- wait for input to go back to main news list
                            puts("\n\nPosted on " + newslist[key].date)
                            puts("Headline: " + newslist[key].headline)
                            puts(newslist[key].body + "\n\n\n")
                            gets()
            end
          end
        end

# end while
end
# end def
end



# mail loop
def check_mail()
  #TODO: Stupid globals?
  messagelist = $messagelist
  
  
    #global has_new_email#TODO: use has_new_mail as a function parameter instead of a global? -- like check_news()?
    mailchoice = "None"
    while mailchoice != "exit"
        # display the appropriate mail screen, depending on new mail/no new mail
        if $has_new_email == 1
          puts $mail_screen_hasmail
            mailchoice = gets().downcase.chop!
        elsif $has_new_email == 0
          puts $mail_screen_nomail
            mailchoice = gets().downcase.chop!
        end
        
        if mailchoice == "send"
            pass#TODO: implement a send option?  Maybe not?  ("I'm writing from a throwaway address...etc")
        end
        
        if mailchoice == "read"
            readchoice = "None"
            while readchoice.downcase != "exit"
                
                # puts the header for the e-mail list
                puts("ID:    From:                         Subject:                      "+"\n")
                
                for message in messagelist
                    # make sure only "unlocked" messages are displayed
                    if message.unlocked
                        #puts the message headers
                        puts(message.id+"      "+message.senderemail+"    "+message.subj)
                    end
                end
                puts "\n\nEnter the message ID of the e-mail you want to read.\nTo exit, type 'exit'.\n\n>"
                readchoice = gets().downcase.chomp!
             #while end
             end
                
                # if the player hits ENTER without selecting a mail item, he goes back to the home screen
                if readchoice.empty?
                    break
                
                else
                    # check the player input against each message-ID to find a match
                    for message in messagelist
                        if message.id == readchoice
                            # puts the sendername, subject, and message body for the chosen message
                            puts("   From: " + message.sendername)
                            puts("\nSubject: " + message.subj + "\n")
                            puts message.body + "\n\n\n"
                            gets().downcase.chomp!
                        end
                    end
                end
            end
#while end
end
# def end
end

#############################################

# internet game loop
def thenet(time_left)
    #TODO Stupid global?
    $time_left = time_left
    
    
    playerchoice = "None"
    while playerchoice.downcase != "logoff"
        puts $home_screen
        puts "> "
        playerchoice = gets().downcase.chop!
        
        #make the player's choice
        if playerchoice == "mail"
            check_mail()
        
        elsif playerchoice == "news"
            check_news()
            
        elsif playerchoice == "research"
            do_research()
        
        elsif playerchoice == "hack"
          #don't do anything
        end
    #while end
    end
#def end
end