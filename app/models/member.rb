class Member

  attr_accessor :name, :power, :biography

  MEMBERS = []

  def initialize(info)
    @name = info[:name]
    @power = info[:power]
    @biography = info[:biography]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
