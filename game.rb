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
