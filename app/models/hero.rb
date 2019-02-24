class Hero

  attr_reader :name, :power, :bio

  @@all = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

end
