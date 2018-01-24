
class Hero
	
	@@all = []
	
	attr_accessor :name, :power, :biography
	
	def initialize(all={})
		all.each do |key, value|
			self.send("#{key}=", value)
		end
		@@all << self
	end
	
	def self.all
		@@all
	end
	
end