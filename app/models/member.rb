class Member

  attr_accessor :bio, :power, :name

MEMBERS = []

  def initialize(attrs)
    @bio = attrs[:bio]
    @power = attrs[:power]
    @name = attrs[:name]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

end
