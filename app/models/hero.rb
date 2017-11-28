class Hero

  @@all = [ ]

  attr_accessor :name, :power, :biography

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
