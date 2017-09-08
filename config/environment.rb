require 'bundler/setup'
Bundler.require 

require_relative '../app/models/virus.rb'
require_relative '../app/models/host.rb'
require_relative '../app/models/infection.rb' 
require_relative '../app/command_line_interface.rb'





def viri 
	flu      = Virus.new("Influenza", 0.01)
	hep_c    = Virus.new("Hepatitus C", 0.02)
	hanta    = Virus.new("Hantavirus", 0.03)
	lassa    = Virus.new("Lassa", 0.04)
	rabies   = Virus.new("Rabies", 0.05)
	ebola    = Virus.new("Ebola", 0.06)
	smallpox = Virus.new("Smallpox", 0.07)
	dengue   = Virus.new("Dengue", 0.08)

	[
		flu, 
		hep_c,
		hanta,
		lassa,
		rabies,
		ebola,
		smallpox,
		dengue
	]
end 




