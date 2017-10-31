class Superhero
  attr_accessor :name, :power, :bio
  @@super_heros = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@super_heros << self
  end

  def self.all
    @@super_heros
  end


end
