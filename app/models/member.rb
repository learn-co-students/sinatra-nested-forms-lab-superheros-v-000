class Member
  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

end
