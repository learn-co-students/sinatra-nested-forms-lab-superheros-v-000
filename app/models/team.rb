class Team 
  attr_accessor :name, :motto 
  @@all = []

  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
  
end
