class Hero
  
  attr_accessor :name, :power, :biography

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
