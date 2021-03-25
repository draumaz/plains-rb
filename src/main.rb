require './handy'
require './mm1'
require './rst'

def fileEnsure
        begin
                saveRead
                return
        rescue Errno::ENOENT
                saveGen
                fileEnsure
        end
end

def chLoopback
        system("cls||clear")
        puts ""
        splashDisplay
        choose
end

def choose
        begin
                var9 = saveRead[8]
                var10 = saveRead[9]
                var14 = saveRead[13]
                puts "\nPLAY [1]"
                puts "RESET [2]"
                print "\nACTION >> "
                choose = Integer(gets.chomp)
                if choose == 1
                        mainMenu1
                end
                if choose == 2
                        reset
                        chLoopback
                end
                if choose > 2 or choose < 1
                        inpErHandler
                        chLoopback
                end
        rescue ArgumentError
                inpErHandler
                chLoopback
        end
end

def launch
        fileEnsure
        screenClear
        puts ""
        splashDisplay
        choose
end

launch