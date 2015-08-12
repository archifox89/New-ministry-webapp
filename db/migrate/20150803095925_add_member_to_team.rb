class AddMemberToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :member, :string
  end
end
