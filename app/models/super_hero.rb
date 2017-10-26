class SuperHero

attr_accessor :name, :biography, :power

  def initialize(params)
    @name = params["name"]
    @biography = params["bio"]
    @power = params["power"]
  end

end
