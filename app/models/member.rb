class Member

  attr_accessor :name, :power, :bio
  MEMBERS = []

  def initialize (name, power, bio)
    @name = name
    @powder = power
    @bio = bio
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
