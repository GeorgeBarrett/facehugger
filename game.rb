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

    def lower_level 
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
            return :upper_level

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

    def upper_level