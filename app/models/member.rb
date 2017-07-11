class Member

  attr_accessor :name, :power, :bio

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end



  def initialize(attributes)
    attributes.each{|key, value| send("#{key}=", value)}
    self.class.all << self
  end

end