class SuperHero
  attr_accessor :name, :power, :bio, :team

  def initialize(params)
    self.name = params[:name]
    self.power = params[:power]
    self.bio = params[:bio]
  end
end
