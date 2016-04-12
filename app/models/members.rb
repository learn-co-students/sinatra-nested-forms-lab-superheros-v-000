class Member
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(args = {})
    args.each {|k,v| send "#{k}=", v if respond_to? "#{k}=" }
    @@all << self
  end

  def self.all
    @@all
  end

end
