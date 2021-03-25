require './handy'
require './cave'

def mainMenu1
    begin
        system('cls||clear')
        var1 = saveRead[0]
        var6 = saveRead[5]
        versionHeader
        invDisplay
        puts "\nYou are Liam. An astronaut by trade, you took a bad turn on the Space Belt," 
        puts "and landed on a strange planet. You awaken, laying in a field of grass."
        puts "You see hills, a cave, and strange flora all around you.\n\n"
        puts "HILL [1]"
        puts "CAVE [2]"
        puts "TOOL [3]"
        puts "QUIT [4]"
        print "\nACTION >> "
        choose = Integer(gets.chomp)
        if choose == 1
            puts "one"
        end
        if choose == 2
            cave
        end
        if choose == 3
            puts "three"
        end
        if choose == 4
            quitHandler
        end
        if choose > 4 or choose < 1
            inpErHandler
            mainMenu1
        end
    rescue ArgumentError
        inpErHandler
        mainMenu1
    end
end