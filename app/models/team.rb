class Team
  attr_accessor :name,:motto
  @@all=[]
  def initialize(params)
    @name=params[:name]
    @motto=params[:motto]
    @@all<<self
  end

  def self.all
    @@all
  end
end

class Hero

    attr_accessor :name,:power,:bio
    @@all=[]
    def initialize(args)
      @name=args[:name]
      @power=args[:power]
      @bio=args[:bio]
      @@all<<self
    end

    def self.all
      @@all
    end
    #
    # def self.clear
    #   @@all=[]
    # end
  end 
