class Superhero
  attr_reader :name, :power, :bio

  @@superheros = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@superheros << self
  end

  def self.all
    @@superheros
  end
end
