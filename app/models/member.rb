class Member
  attr_accessor :name, :power, :bio

  @@all = []

def initialize(hash)
  hash.each do |k, v|
    self.send("#{k}=", v) if respond_to? "#{k}="
  end
  @@all << self
end

def self.all
  @@all
end

end