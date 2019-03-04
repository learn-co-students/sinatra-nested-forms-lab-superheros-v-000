class Hero
    attr_accessor :name, :power, :bio
    
    def initialize(hash)
        hash.each do |k, v|
            self.send "#{k}=", v
        end
    end
end