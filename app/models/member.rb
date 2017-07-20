class Member
  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(args)
    #binding.pry
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
