class Game

    def initialise(start)
        @quips = [
            "You now have a facehugger on your face.",
            "There will soon be an alien egg in your chest.",
            "Your new best friend is a facehugger.",
            "It's on your face. There's no escape.",
        ]
        @start = start
        puts "in init @start = " + @start.inspect
    end

    def prompt()
        print "> "
    end

    def play()
        puts "@start => " + @start.inspect
        next_room  = @start
    
        while true 
            puts "\n-----------------"
            room = method(next_room)
            next_room = method.call()
        end
    end

    def death()
        puts @quips[rand(@quips.length())]
        process.exit(1)
    end

    def lower_level() 
        puts "Your ship has just landed on a deep space mining colony"
        puts "You were sent there to investigate the facility as mineral production had ceased"
        puts "Your mission is to investigate and return the findings to mothership"
        puts "\n"
        puts "after suiting up, you leave your ship and head to the nearest door"
        puts "the quiet is the first thing you notice. flickering lights and dark corridors comprise your vision"
        puts "The facility seems abandoned and coms with mothership have severed"
        puts "you head to the lower levels of the installation in hope to find life or explanations"
        puts "the levels of humiditiy are off the scale. You decide to head down to the lowest level"
        puts "here you find the unbelievable... a mass of what seem to be dark green pods covered in an unidentifiable liquid"
        puts "you begin to examine one of the alien life forms when the top of it folds open"

        prompt()
        action = gets.chomp()

        if action == "take a quick sample"
            puts "you take out your tools and take a sample using a swab and a petri dish"
            puts "you can see that the alien pod is unfolding further"
            puts "an octopus like unidentified lifeform is squirming around inside and attempting to break free"
            puts "you realise that is is an egg!"
            puts "it's time to get out of there with the sample"
            puts "as you turn to leave the lower level you see countless eggs unfolding"
            puts "You need to get back to to your ship"
            return :going_up

        elsif action == "run"
            puts "you panic"
            puts "in a desperate attemt to climb up out of the lower level you slip"
            puts "the fall from the metal ladder breaks both of your legs"
            puts "you lie amongst the alien life forms and watch an ocotpus like creature immerge"
            puts "it zag zags toward you as you pray that the alien isn't hostile"
            puts "the facehugger leaps into the air and onto your face"
            puts "you feel its tail tighten round your neck, its arms clasp your face and a slimey tube enter your mouth"
            return :death

        elsif action == "wait and see what unfolds"
            puts "the scientist within is in awe"
            puts "you watch as an ocotpus like creature emerges from its egg"
            puts "the creature moves slowly onto your arm and caresses you"
            puts "you feel a bond between human and alien"
            puts "you are the first human to encounter sentient life"
            puts "the alien leaps onto your face and all turns black"
            return :death
        
        else "DOES NOT COMPUTE. SELECT ONE OF THE THREE OPTIONS"
            return :lower_level
        end
    end

    def going_up()
        puts "panic sets in as a dozen facehuggers emerge from their eggs"
        puts "you are running thrrough the damp misty lower level towards the elevator"
        puts "frantically you push the button"
        puts "but as the elevator lowers down you realise there is not enough time"
        puts "the facehuggers can smell you fear and propelled towards you"
        puts "there is a door with a key code that leads to stairwell"
        puts "you are familiar with the locking system and know that if you guess the code wrong more than ten times" 
        puts "then the door will stay locked indefinetly"
        puts "the code is three digits"

        code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]

        print "[keypad]> "

        guess = gets.chomp()

        guesses = 0

        while guess != code and guesses < 10
            puts "BZZZZZZDDDDDDD"
            guesses += 1
            print "[keypad]> "
            guess = gets.chomp()
        end

        if guess == code 
            puts "the door slides open and dash in faster than a gazelle"
            puts "you smash the ground floor button again and again"
            puts "the door is closing but not fast enough"
            puts "just as the door closes a facehugger sneaks through"
            puts "you take out your laser pistol and unload into its body"
            puts "the facehugger slumps on the floor and as it bleeds you watch in fascination"
            puts "the dull green blood begins to burn through the solid metal floor"
            puts "a hole is created and the corpse falls back down to the depths"
            puts "as you peer down you see the unthinkable"
            puts "an alien the size of a human is climbing the shaft"
            puts "its tail is whipping the surrounding metal and its long forehead has a sheen of death"
            puts "the alien clamps onto the underside of the elevator just as you reach the ground floor"

            return :outside
        
        if guess != code
            puts "you hear the door clamp shut"
            puts "you turn to see a dozen facehuggers scurrying towards you"
            puts "running is your only option"
            puts "you somehow dodge them and climb up to a platform"
            puts "from here you take out your laser pistol and shoot all twelve"
            puts "you breathe a sigh of relief and make your way to an open door at the farside of the lower level"
            puts "you enter the room and collapse to your knees"
            puts "amongst a web of slime you see the alien that has produced the eggs"
            puts "the queen is five times larger than a human and has a tail that is longer than a shuttle pod"
            puts "she stares at you through unseen eyes. her organic metalic crown reflecting the flickering lights"
            puts "her mouth opens and a smaller mouth pertrudes"
            puts "you notice something behind you and all goes black"
            puts "the flickering lights slowly come back into view"
            puts "you are stuck to the wall and covered in green web leaving only your face"
            puts "you see the egg unfolding and the facehugger making it's way out of its cacoon"
            puts "it saunters over to your legs and slowly edges up you body"
            puts "the facehugger wraps its tail around your neck, clamps onto your face and feeds its tube down into your chest"

            return :death
        end
    end

    
    def return_to_ship()
        puts "the elevator door opens and every sense is obliterated by an electrical storm"
        puts "the rain and the lightnening seem almost welcoming compared to the series of events that has just occured"
        puts "you begin to run and then realise that you are on a different side of the compound"
        puts "stay calm or die"
        puts "you reach for your motion detector and turn it on"
        puts "the sound of the sonar eminating frequencies is comforting"
        puts "there are no lifeforms near you"
        puts "think"
        
        prompt()
        action = gets.chomp()

        if action == "circle compound"
            puts "you begin to circle the compound looking for your ship"
            puts "the static fuzz of your radar lets you know that nothing around you is moving"
            puts "the lightning and rain are unrelenting"
            puts "a tunnel that leads through the compound"
            puts "you can see your ship at the end"
            puts "as you sprint through the dimly lit way you hear a beep"
            puts "beep... beep... beep..."
            puts "there's not time to think, only to run"
            puts "blood covers the walls"
            puts "beep. beep. beep."
            puts "it's getting closer"
            puts "you are nearly there"
            puts "beepbeepbeepbeepbeepbeepbeepbeepbeep"
            puts "where is it"
            puts "you look up and as the lightning flashes you see that to metal roof of the tunnel is moving"
            puts "there's so many"
            puts "cold metal wraps around your throat"
            puts "a facehugger crawls out of a vent and leaps straight onto your face"

            return :death

        if action == "re-enter compound and find a map"
            puts "you can hear the alien trying to slash it's way through the elevator floor"
            puts "it is trapped for now"
            puts "you notice a door that goes back into the compound"
            puts "if you can orientate yourself then you stand the best chance of making it back to the ship"
            puts "you re-enter the compound"
            puts "flickering lights, crackling radar, no sign of life"
            puts "you walk down a long corridor and see three side rooms"
            puts "which one do you choose"

            good_room = rand(3)+1
            print "[room# > ]"
            guess = gets.chomp()

            if guess.to_i != good_room
                puts "you run into the room"
                puts "What's that"
                puts "before you have time to blink a facehugger has leapt onto your face"

            if guess.to_i == good_room    
                puts "a map of the compound is on the wall"
                puts "breathe"
                puts "you get your bearings back and work out the quickest way back to your ship"
                puts "you calmly walk along the corridor to a t-junction and turn left"
                puts "beep... beep... beep... beep"
                puts "peering the other way you see the devil itself"
                puts "the queen is rampaging down the corridor smashing everything in her path"
                puts "beepbeepbeepbeepbeepbeep"
                puts "run"
                puts "you hear her power and desire slashing towards you"
                puts "run"
                puts "you make it to the door to exit the compound and slam the open pad"
                puts "the door slides open"
                puts "you jump out of the door and hit the close pad"
                puts "turning around, you see the queen trapped in the door"
                puts "her metalic body pays no resemblance to anything you have seen"
                puts "her head is like a crown, her mouth opens and a second mouth darts out"
                puts "it stops inches from your face and bites the air you breathe"
                puts "you move back, take out your laser pistol and unload it into her head"

                return :ship
            end
        end
    end

    def ship()
        puts "beep... beep... beep..."
        puts "there are more aliens coming"
        puts "you sprint back towards your ship"
        puts "beep. beep. beep"
        puts "lashing rain, lightning tearing the sky open"
        puts "beepbeepbeepbeepbeep"
        puts "they are right on top of you"
        puts "you push the remote control and watch your ships door open smoothly"
        puts "diving through you press the close button and hear the aliens slam against the closed door"
        puts "you collect yourself in the cock pit for a few seconds before preparing for launch"
        puts "it's not long before you are in orbit and make your way to the sleeping quaters"
        puts "\n"
        puts "you arrive back at mothership and after a 48 hours in an induced coma, you awaken to see your friends"
        puts "what on earth happened down there? someone asks"
        puts "I will tell you over a cup of tea, but first I want to see the sample"
        puts "you make you way to lab 42 and enter with excitement"
        puts "hi doc, tell me all abou....."
        puts "your chest tightens"
        puts "you can't breathe"
        puts "you feel something moving inside you"
        puts "you chest starts to move"
        puts "you scream as your muscle fibres tear and you chest bones break"
        puts "the doc passes out almost instantly"
        puts "you lay on the floor staring at the alien that has just burst out of your chest"
        puts "you die at the same time as another crewman discovers an octopus like creature under the bed inside your ship"
        puts "the nearly born alien scurries into a ventilation shaft"
        puts "total mothership crew is equal to 4237"
        
        process.exit(0)
    end
end

a_game = Game.new(:lower_level)
a_game.play()
