class Host 
	attr_reader :name
	attr_accessor :health, :immunity, :alive

	ALL = []

	def initialize(name)
		@name = name
		@health = 100
		@immunity = rand(1..3) 
		@alive = true 
		ALL << self 
	end

	def self.all 
		ALL 
	end 

	def viruses 
		Infection.all.select {|infection| infection.host == self}
	end 

	def self.find_by_name(name) 
		self.all.find {|host| host.name == name}
	end 

	def alive?
		if self.health <= 0 
			self.health = 0 
			self.alive = false 
			false
		else 
			true 
		end 
	end 

end 

