class Member
  attr_accessor :name, :power, :bio
  MEMBERS = []
  
  def initialize(stats)
    @name = stats[:name]
    @power = stats[:power]
    @bio = stats[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end