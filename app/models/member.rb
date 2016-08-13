class Member
  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(options)
    @name = options[:name]
    @power = options[:power]
    @bio = options[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
