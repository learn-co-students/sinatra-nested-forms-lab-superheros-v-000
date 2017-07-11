class Team

  attr_accessor :name, :motto, :members

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