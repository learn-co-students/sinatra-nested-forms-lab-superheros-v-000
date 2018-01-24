class Team
  attr_accessor :name, :motto

def initialize(hash)
  hash.each do |k, v|
    self.send("#{k}=", v) if respond_to? "#{k}="
  end
end

end