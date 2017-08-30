class CreateTeam < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :motto
    end
  end
end
