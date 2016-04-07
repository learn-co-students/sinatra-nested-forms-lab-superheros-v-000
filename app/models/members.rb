class Member

  attr_accessor :name, :power, :bio

  MEMBERS = []


  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
    MEMBERS<<self
  end

  def self.all
    MEMBERS
  end



end