class SuperHero
  attr_accessor :name, :power, :biography

  @@members = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@members << self
  end

  def self.members
    @@members
  end
end
