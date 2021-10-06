class SuperHero
  attr_accessor :name, :power, :bio
  @@heros = []
  # super hero should have association to a team
  def initialize (params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@heros << self
  end

  def self.all
    @@heros
  end

end
