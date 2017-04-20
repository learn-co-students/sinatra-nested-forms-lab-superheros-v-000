class Hero

  attr_accessor :name, :power,:bio
  @@all = []
  def initialize(hero)
    @name,@power,@bio = hero[:name],hero[:power],hero[:bio]
    @@all << self
  end
  
 def self.all
   @@all
 end

end
