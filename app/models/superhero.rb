class Superhero
  attr_accessor :name, :power, :bio

  ALL = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    ALL << self
  end

  def self.all
    ALL
  end
end
