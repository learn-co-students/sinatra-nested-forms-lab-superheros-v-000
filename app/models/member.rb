class Member

  attr_accessor :name, :power, :biography

  MEMBERS = []

  def initialize(hash)
    #=> {"name"=>"Amanda", "power"=>"Ruby", "biography"=>"I love Ruby!"}
    @name = hash[:name]
    @power = hash[:power]
    @biography = hash[:biography]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

  def self.clear
    MEMBERS.clear
  end

end
