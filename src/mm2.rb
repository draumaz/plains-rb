require './handy'

def mainMenu2
    begin
        screenClear
        puts "\nPlaceholder"
        puts ""
        quitHandler
    rescue ArgumentError
        inpErHandler
        mainMenu2
    end
end