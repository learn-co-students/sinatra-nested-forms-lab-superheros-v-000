class Team

  attr_accessor :name, :motto, :members

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    @members =[]
    if !params[:team][:heroes].empty?
      params[:team][:heroes].each do |hero|
        new_hero = Hero.new(hero)
        @members << new_hero
      end
    end
  end

end
