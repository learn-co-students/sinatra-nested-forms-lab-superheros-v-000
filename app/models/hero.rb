class Hero < Sinatra::Base

  attr_accessor :name, :power, :biography

  @@heroes = []

  def initialize(name, power, biography)
    @name=name
    @power=power
    @biography=biography
    @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes.clear
  end
end