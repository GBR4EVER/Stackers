class AddUserIdToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :user_id, :integer
    add_index :badges, :user_id
  end
end
