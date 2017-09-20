class Member
  attr_accessor :name, :power, :biography

  MEMBER = []


  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    MEMBER << self
  end

  def self.all
    MEMBER
  end




end
