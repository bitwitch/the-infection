def welcome 
	puts "Welcome to THE INFECTION!\n"
	puts "######################################"

	puts "       @@@@@@@@@@@@@@@@@@          "
	puts "     @@@@@@@@@@@@@@@@@@@@@@@       "
	puts "   @@@@@@@@@@@@@@@@@@@@@@@@@@@     "
	puts "  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@    "
	puts " @@@@@@@@@@@@@@@/      \\@@@/   @   "
	puts "@@@@@@@@@@@@@@@@\\      @@  @___@   "
	puts "@@@@@@@@@@@@@ @@@@@@@@@@  | \\@@@@@ "
	puts "@@@@@@@@@@@@@ @@@@@@@@@\\__@_/@@@@@ "
	puts " @@@@@@@@@@@@@@@/,/,/./'/_|.\\'\\,\\  "
	puts "   @@@@@@@@@@@@@|  | | | | | | | | "
	puts "                 \\_|_|_|_|_|_|_|_| "
	puts " "
	puts "######################################\n"
	puts "Who do you want to infect?\n"
end 

def get_user_input 
	gets.chomp 
end 

def prompt_for_hosts
	puts "Enter a host name to see if they survive THE INFECTION:"
end 

def done_instruction
	puts "Enter 'done' to begin THE INFECTION..."
	puts "or"
	puts "Enter another host name:"
end 

