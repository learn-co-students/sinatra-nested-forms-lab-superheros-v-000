class Member
  attr_accessor :name, :power, :bio
  @@heros = []
  def initialize(att)
    att.each {|k, v| self.send(("#{k}="),v)}
    @@heros << self
  end
  def self.all
    @@heros
  end
end
