# class SuperHero 

# 	attr_accessor :name, :power, :bio, :team
# 	@@all = []

# 	def initialize(name, power, bio)
# 		@name = name
# 		@power = power
# 		@bio = bio
# 		@@all << self
# 		self
# 	end

# 	def self.create_from_params(params)
# 		self.new(params[:name], params[:power], params[:bio])
# 	end

# 	def self.create_from_array(heros)
# 		heros.collect do |hero|
# 			self.create_from_params(hero)
# 		end
# 	end
# end
