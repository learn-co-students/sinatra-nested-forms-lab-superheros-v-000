require 'pry'

class Hero
  #belongs_to :team
  attr_reader :name, :power, :bio

  HEROS = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROS << self
  end

  def self.all
    HEROS
  end

end
