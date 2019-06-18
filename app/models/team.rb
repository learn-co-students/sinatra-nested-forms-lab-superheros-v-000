class Team
  attr_reader :team_name, :team_motto, :members, :member1_name, :member1_power, :member1_bio, :member2_name, :member2_power, :member2_bio, :member3_name, :member3_power, :member3_bio

  def initialize(params)
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @members = params[:team][:members]
    @member1_name = @members[0]["name"]
    @member1_power = @members[0]["power"]
    @member1_bio = @members[0]["bio"]
    @member2_name = @members[1]["name"]
    @member2_power = @members[1]["power"]
    @member2_bio = @members[1]["bio"]
    @member3_name = @members[2]["name"]
    @member3_power = @members[2]["power"]
    @member3_bio = @members[2]["bio"]
  end
end
