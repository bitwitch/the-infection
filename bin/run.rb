require_relative "../config/environment"

welcome 
inputs = []

# Ensure there are two hosts 
prompt_for_hosts
inputs << get_user_input
prompt_for_hosts
inputs << get_user_input

# User can define as many hosts as they wish 
while "boobs are good"
	done_instruction
	input = get_user_input
	break if input == "done"
	inputs << input 
end 

# Instantiate and infect the hosts 
inputs.each do |name| 
	host = Host.new(name)
	virus = viri.sample
	virus.infect(host)
end 

system "clear"

# Display result of initial infection 
Infection.all.each do |infection| 
	puts "#{infection.host.name} was infected by #{infection.virus.name}!"
	puts "#{infection.host.name}'s health is #{infection.host.health}."
	puts " "	
	sleep(0.5)
end 

	
# BEGIN THE INFECTIONNNNNNNNN!!!!!!
until Host.all.select(&:alive?).length <= 1
	puts "."
	sleep(0.5)
	puts "."
	sleep(0.5)
	puts ".\n\n"
	sleep(2.3)

	# proliferate and attack 
	# puts the result 

	Infection.all.each do |infection| 
		if infection.host.alive?
			infection.proliferate
			infection.attack_host
			puts "#{infection.host.name} is infected by #{infection.virus.name}!"
			puts "#{infection.host.name}'s health is #{infection.host.health}."
			
			if infection.host.alive? == false

				puts "#{infection.host.name} died of severe #{infection.virus.name}...\n"
				puts "  _____   "
				puts " /     \\ "
				puts "| () () | "
				puts " \\  ^  / "
				puts "  |||||   "
				puts "  |||||   "

			end 
			puts " "	
			sleep(0.5)
		end 
	end  
end 

living = Host.all.find(&:alive?)
system "clear"

if Host.all.select(&:alive?).length == 1
	puts "#{living.name} survived THE INFECTION!"
else 
	puts "Did you really think anyone would survive THE INFECTION?\n"
	sleep(2)
	puts "                               ...----.... "                                                   
	puts "                        ..-:\"''         ''\"-.."
	puts "                     .-'                      '-."
	puts "                   .'              .     .       '."
	puts "                 .'   .          .    .      .    .''."
	puts "               .'  .    .       .   .   .     .   . ..:."
	puts "             .' .   . .  .       .   .   ..  .   . ....::."
	puts "            ..   .   .      .  .    .     .  ..  . ....:IA."
	puts "           .:  .   .    .    .  .  .    .. .  .. .. ....:IA."
	puts "          .: .   .   ..   .    .     . . .. . ... ....:.:VHA."
	puts "          '..  .  .. .   .       .  . .. . .. . .....:.::IHHB."
	puts "         .:. .  . .  . .   .  .  . . . ...:.:... .......:HIHMM."
	puts "        .:.... .   . .\"::\"'.. .   .  . .:.:.:II;,. .. ..:IHIMMA"
	puts "        ':.:..  ..::IHHHHHI::. . .  ...:.::::.,,,. . ....VIMMHM"
	puts "       .:::I. .AHHHHHHHHHHAI::. .:...,:IIHHHHHHMMMHHL:. . VMMMM"
	puts "      .:.:V.:IVHHHHHHHMHMHHH::..:\" .:HIHHHHHHHHHHHHHMHHA. .VMMM."
	puts "      :..V.:IVHHHHHMMHHHHHHHB... . .:VPHHMHHHMMHHHHHHHHHAI.:VMMI"
	puts "      ::V..:VIHHHHHHMMMHHHHHH. .   .I\":IIMHHMMHHHHHHHHHHHAPI:WMM"
	puts "      ::\". .:.HHHHHHHHMMHHHHHI.  . .:..I:MHMMHHHHHHHHHMHV:':H:WM"
	puts "      :: . :.::IIHHHHHHMMHHHHV  .ABA.:.:IMHMHMMMHMHHHHV:'. .IHWW"
	puts "      '.  ..:..:.:IHHHHHMMHV\" .AVMHMA.:.'VHMMMMHHHHHV:' .  :IHWV"
	puts "       :.  .:...:\".:.:TPP\"   .AVMMHMMA.:. \"VMMHHHP.:... .. :IVAI"
	puts "      .:.   '... .:\"'   .   ..HMMMHMMMA::. .\"VHHI:::....  .:IHW'"
	puts "      ...  .  . ..:IIPPIH: ..HMMMI.MMMV:I:.  .:ILLH:.. ...:I:IM"
	puts "    : .   .'\"' .:.V\". .. .  :HMMM:IMMMI::I. ..:HHIIPPHI::'.P:HM."
	puts "    :.  .  .  .. ..:.. .    :AMMM IMMMM..:...:IV\":T::I::.\".:IHIMA"
	puts "    'V:.. .. . .. .  .  .   'VMMV..VMMV :....:V:.:..:....::IHHHMH"
	puts "      \"IHH:.II:.. .:. .  . . . \" :HB\"\" . . ..PI:.::.:::..:IHHMMV\""
	puts "       :IP\"\"HHII:.  .  .    . . .'V:. . . ..:IH:.:.::IHIHHMMMMM\""
	puts "       :V:. VIMA:I..  .     .  . .. . .  .:.I:I:..:IHHHHMMHHMMM"
	puts "       :\"VI:.VWMA::. .:      .   .. .:. ..:.I::.:IVHHHMMMHMMMMI"
	puts "       :.\"VIIHHMMA:.  .   .   .:  .:.. . .:.II:I:AMMMMMMHMMMMMI"
	puts "       :..VIHIHMMMI...::.,:.,:!\"I:!\"I!\"I!\"V:AI:VAMMMMMMHMMMMMM'"
	puts "       ':.:HIHIMHHA:\"!!\"I.:AXXXVVXXXXXXXA:.\"HPHIMMMMHHMHMMMMMV"
	puts "         V:H:I:MA:W'I :AXXXIXII:IIIISSSSSSXXA.I.VMMMHMHMMMMMM"
	puts "           'I::IVA ASSSSXSSSSBBSBMBSSSSSSBBMMMBS.VVMMHIMM'\"'"
	puts "            I:: VPAIMSSSSSSSSSBSSSMMBSSSBBMMMMXXI:MMHIMMI"
	puts "           .I::. \"H:XIIXBBMMMMMMMMMMMMMMMMMBXIXXMMPHIIMM'"
	puts "           :::I.  ':XSSXXIIIIXSSBMBSSXXXIIIXXSMMAMI:.IMM"
	puts "           :::I:.  .VSSSSSISISISSSBII:ISSSSBMMB:MI:..:MM"
	puts "           ::.I:.  ':\"SSSSSSSISISSXIIXSSSSBMMB:AHI:..MMM."
	puts "           ::.I:. . ..:\"BBSSSSSSSSSSSSBBBMMMB:AHHI::.HMMI"
	puts "           :..::.  . ..::\":BBBBBSSBBBMMMB:MMMMHHII::IHHMI"
	puts "           ':.I:... ....:IHHHHHMMMMMMMMMMMMMMMHHIIIIHMMV\""
	puts "             \"V:. ..:...:.IHHHMMMMMMMMMMMMMMMMHHHMHHMHP'"
	puts "              ':. .:::.:.::III::IHHHHMMMMMHMHMMHHHHM\""
	puts "                \"::....::.:::..:..::IIIIIHHHHMMMHHMV\""
	puts "                  \"::.::.. .. .  ...:::IIHHMMMMHMV\""
	puts "                    \"V::... . .I::IHHMMV\"'"
	puts "                      '\"VHVHHHAHHHHMMV:\""

end 
















