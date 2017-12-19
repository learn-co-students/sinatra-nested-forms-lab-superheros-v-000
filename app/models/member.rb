class Members
  attr_reader :name,:power,:bio

  MEMBERS=[]

  def initialize(params)
    @name,@power,@bio=params[:name], params[:power], params[:bio]
  end

  def self.all
    MEMBERS
  end
end
