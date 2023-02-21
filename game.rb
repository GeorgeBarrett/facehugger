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

    def central_corridor 
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
