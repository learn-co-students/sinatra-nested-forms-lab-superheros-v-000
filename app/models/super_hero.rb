class SuperHero < ActiveRecord::Base
attr_accessor :name, :supperpower, :biography
@@all = []
def initialize(args)
	@name = args[":name"]
	@supperpower = args[":supperpower"]
	@biography = args[":biography"]
	@@all << self
end 

def self.all
	@@all
end 

def self.clear
	@@all = []
end 
end 