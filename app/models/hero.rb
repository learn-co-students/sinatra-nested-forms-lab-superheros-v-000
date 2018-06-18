class Hero < ActiveRecord::Base
  
  belongs_to :team
  
  # attr_accessor :name, :power, :bio 
  
  # @@all = []
  
  # def initialize(args)
  #   super(args)
  #   @name = args[:name]
  #   @power = args[:power]
  #   @bio = args[:bio]
  #   @@all << self
  # end
  
  # def self.all 
  #   @@all
  # end
  
end