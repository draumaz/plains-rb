require './handy'

def mainMenu1
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
    puts "\n  << ACTION\033[1A"
    choose = Integer(gets.chomp)
    if choose == 1
        puts "ONE"
    end
    if choose == 2
        puts "TWO"
    end
    if choose == 3
        puts "THREE"
    end
    if choose == 4
        quitHandler
    end
    exit
end