# Calendar
require 'colorize'

class Event
    def initialize(title, description, date, location)
        @title = title
        @description = description
        @date = date
        @location = location
    end
    def save()
        f = File.open("events.bin", "wb")
        f.syswrite("[#{@title},#{@description},#{@date},#{@location}]")
        f.close()
    end
end

def createFile(fname)
    if File.exist?("#{fname}")
        return
    end
    File.new("events.bin", "wb")
end

def clear()
    system("cls")
end
def pause()
    system("pause")
end

def createEvent()
    clear()
    print "Title of event: "
    title = gets.chomp.upcase
    print "Description of event: "
    description = gets.chomp.upcase
    print "Date of event (mm/dd/yyyy): "
    date = gets.chomp.split("/")
    print "Location of event: "
    location = gets.chomp.upcase
    event = Event.new(title, description, date, location)
    event.save()
end

def readAll()
    f = File.open("events.bin", "rb")
    puts "Title\tDescription\tDate\tLocation"
    f.each_line do |line|
        puts line
      end
    f.close()
end

def menu()
    puts "********Calendar*******".colorize(:background => :blue)
    puts "1 - Create new event   \n2 - View your events   \n3 - Edit any event     \n4 - Delete any event   \n5 - Exit               ".colorize(:background => :blue)
    puts "***********************".colorize(:background => :blue)
    print "Choose an option: "
    choose = gets.chomp.to_i
    case choose
        when 1
            createEvent()
            puts "Event added successfully!".green
            pause()
            return true;
        when 2
            readAll()
            return true;
        when 3
        when 4
        when 5
            return false
        else
            puts "Invalid option. Please try again.".red
            pause()
            return true
    end
end

# Main
clear()
createFile("events.bin")
exit = true
while exit
    clear()
    exit = menu()
end