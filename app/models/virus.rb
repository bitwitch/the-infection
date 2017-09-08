class Virus 
	attr_reader :name, :strength

	ALL =[]

	def initialize(name, strength)
		@name = name
		@strength = strength
		ALL << self 
	end

	def self.all 
		ALL 
	end 

	def hosts 
		Infection.all.select {|infection| infection.virus == self}
	end 

	def infect(name)
		if name.is_a?(String) 
			host = Host.find_by_name(name)
		else 
			host = name 
		end 
		
		Infection.new(self, host)
	end 

end 




# flu_effects = [ 
# 	"vommiting" = {
# 		strength: 1,
# 		multiplier: 1.1
# 		},
# 	 "watery eyes",= {
# 		strength: 0.1,
# 		multiplier: 1.01 
# 		}, 
# 	"gastroenteritis", = {
# 		strength: 2,
# 		multiplier: 1.1
# 		}
# ]

