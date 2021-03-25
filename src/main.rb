require './handy'
require './mm1'
require './mm2'
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
                var2 = saveRead[1]
                var9 = saveRead[8]
                var10 = saveRead[9]
                var14 = saveRead[13]
                puts "\nPLAY [1]"
                puts "RESET [2]"
                print "\nACTION >> "
                choose = Integer(gets.chomp)
                if choose == 1
                        if var2 == 0
                                mainMenu1
                        end
                        if var2 == 1
                                mainMenu2
                        end
                        if var2 > 1 or var2 < 0
                                puts "\nDirty hacker..."
                                sleep(10)
                        end
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