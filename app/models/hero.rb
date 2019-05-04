class Hero
  attr_accessor :name, :power, :bio

  Heroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    Heroes << self
  end

  def self.all
    Heroes
  end


end
