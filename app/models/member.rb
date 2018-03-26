class Member
  attr_accessor :name, :power, :biography
  MEMBERS = []
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    MEMBERS <<  self

  end
def self.all
  MEMBERS
end
end
