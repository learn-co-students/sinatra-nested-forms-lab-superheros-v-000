class Hero

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize hash={}
    hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def self.create hash={}
    self.new(hash).save
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end
end