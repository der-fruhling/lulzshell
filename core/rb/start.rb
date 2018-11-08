require 'colorize'

class CmdPrompt
    # all of these programs are changable
    # please, if you modify this program, don't redistribute it
    def print(input)
        puts input
    end

    def ProcEnd(input)
        puts "Not supported".red
    end

    def FileEdit(name, nano)
        if nano == true
            system("nano" + name)
        else
            system("vim" + name)
        end
    end

    def Exit()
        system("kill $BASHPID")
    end
end
def parse(input)
    if input == "print"
        a = gets.chomp
        CmdPrompt.print(a)
    elsif input == "endp"
        CmdPrompt.ProcEnd("")
    elsif input == "edit"
        print "filename[ask]> "
        CmdPrompt.FileEdit(gets.chomp, false)
    elsif input == "nedit"
        print "filename[ask]> "
        CmdPrompt.FileEdit(gets.chomp, true)
    elsif input == "exit"
        print "Goodbye World"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        sleep(0.1)
        print "\b"
        CmdPrompt.Exit()
    else
        puts "ERROR: UNKNOWN COMMAND".red
end
puts "Welcome to LulSHELL, this is based off of the never forgotton limiumSHELL\nR.I.P. Limium\n\n;(\n".green
while true
    print "lul> ".gray
    input = gets.chomp
    parse(input)
end