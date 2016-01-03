class Hero

  attr_reader :name, :power, :biography, :team

  @@all = []

  def initialize(params,team)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @team = team
    @@all << self
  end

  def self.all
    @@all
  end

end