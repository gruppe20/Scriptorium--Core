class AddGroupsUsersTable < ActiveRecord::Migration
  def up
    create_table :groups_users, :id => false do |t|
        t.references :group_id
        t.references :user_id
    end
  end

  def down
    drop_table :groups_users
  end
end
