class Hero
  attr_reader :name, :power, :bio

  @@hero = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@hero << self
  end

  def self.all
    @@hero
  end
end
