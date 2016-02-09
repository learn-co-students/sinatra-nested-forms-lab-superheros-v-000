class Team
  attr_accessor :name, :motto

  @@all = []

  def initialize(params)
    params.each do |k,v|
      self.send("#{k}=", v)
    end
    @@all << self
  end

  def self.all
    @@all
  end
end