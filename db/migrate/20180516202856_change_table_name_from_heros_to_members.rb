class ChangeTableNameFromHerosToMembers < ActiveRecord::Migration
  def change
    rename_table :heros, :members
  end
end
