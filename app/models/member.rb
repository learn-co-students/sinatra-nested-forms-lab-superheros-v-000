class Member
  attr_accessor  :name, :power, :biography
  @@all = []



  def initialize(detail)
    @name = detail[:name]
    @power = detail[:power]
    @biography = detail[:biography]
    @@all << self
  end

  def self.all
    @@all
  end
end
