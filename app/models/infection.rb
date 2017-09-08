class Infection 
	attr_reader :virus, :host
	attr_accessor :strength, :population_count

	ALL = [] 

	def initialize(virus, host)
		@virus = virus 
		@host = host
		@population_count = rand(25..100)
		@strength = rand(1..5) * virus.strength 
		self.attack_host
		ALL << self 
	end

	def self.all 
		ALL
	end 

	def attack_host
		damage = self.strength * self.population_count
		defense = self.host.immunity
		impact = (damage / defense).round
		self.host.health -= impact
		self.host.alive?
	end 


	def proliferate
		self.population_count += rand(50..150)
		self.attack_host 
		self 
	end

end 