class Member

  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]

    MEMBERS << self
  end #initialize

  def self.all
    MEMBERS
  end #.all

end #class Member
