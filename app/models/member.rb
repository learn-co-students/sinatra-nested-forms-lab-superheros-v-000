class Member
  MEMBERS = []
  attr_accessor :name, :power, :bio

  def initialize(attrs)
    @name = attrs[:name]
    @power = attrs[:power]
    @bio = attrs[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
