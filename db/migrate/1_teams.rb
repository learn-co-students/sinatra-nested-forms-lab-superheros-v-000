class Teams < ActiveRecord::Migration[5.1]
  def change
  	create_table :teams do |t|
  		t.string :team_name
  		t.string :team_motto
  	end
  end
end
