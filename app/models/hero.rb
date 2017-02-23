class Hero

  @@all = []

  attr_reader :name, :power, :biography

  def initialize(name, power, biography)
    @name  = name
    @power = power
    @biography = biography
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all = []
  end

end
