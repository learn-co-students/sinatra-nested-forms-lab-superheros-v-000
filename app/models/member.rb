class Member
  attr_accessor :name, :power, :bio
  @@all = []

  def self.all
    @@all
  end

  def initialize(args)
    @name, @power, @bio = args[:name], args[:power], args[:bio]
    @@all << self
  end
end
