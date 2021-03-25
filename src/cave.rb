def cave
    begin
        screenClear
        versionHeader
        invDisplay
        puts "\nYou make your way towards a deep, dark cave."
        puts "You can barely see anything at all.\n\n"
        puts "CONTINUE [1]"
        puts "LOOK AROUND [2]"
        puts "LISTEN [3]"
        puts "BACK [4]"
        print "\nACTION >> "
        choose = Integer(gets.chomp)
        if choose == 1
            caveSel1
        end
        if choose == 2
            puts "two"
        end
        if choose == 3
            puts "three"
        end
        if choose == 4
            puts "\nSeems pretty forboding...best to head back."
            sleep(2)
            mainMenu1
        end
    rescue ArgumentError
        inpErHandler
        cave
    end
end

def caveSel1
    begin
        var15 = saveRead[14]
        screenClear
        versionHeader
        invDisplay
        if var15 == 0
            puts "\nYou continue deeper down the cave. You can almost see a small box."
            puts "\nOPEN [1]"
        end
        if var15 == 1
            puts "\nJust a dingy old cave."
            puts "\nPUT KNIFE BACK [1]"
        end
        if var15 == 2
            puts "\nYou continue back down. There's that box with the knife."
            puts "\nTAKE BACK [1]"
        end
        puts "BACK [2]"
        print "\nACTION >> "
        choose = Integer(gets.chomp)
        if choose == 1
            print('one')
        end
        if choose == 2
            puts "\nContinuing in a cave this dark, it's just asking for trouble."
            sleep(3)
            cave
        end
    rescue ArgumentError
        inpErHandler
        cave
    end
end