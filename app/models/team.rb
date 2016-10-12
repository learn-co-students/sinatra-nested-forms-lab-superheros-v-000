class Team
  attr_accessor :team_name, :team_motto, :member1_name, :member1_power, :member1_bio, :member2_name, :member2_power, :member2_bio, :member3_name, :member3_power, :member3_bio

  def initialize(details)
    @team_name = details["team"]["name"]
    @team_motto = details["team"]["motto"]
    @member1_name = details["member1_name"]
    @member1_power = details["member1_power"]
    @member1_bio = details["member1_bio"]
    @member2_name = details["member2_name"]
    @member2_power = details["member2_power"]
    @member2_bio = details["member2_bio"]
    @member3_name = details["member3_name"]
    @member3_power = details["member3_power"]
    @member3_bio = details["member3_bio"]
  end

end
