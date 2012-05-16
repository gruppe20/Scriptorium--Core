class AddGroupsUsersTable < ActiveRecord::Migration
  def up
    create_table :groups_users, :id => false do |t|
        t.references :group
        t.references :user
    end
    add_index :groups_users, :group_id
    add_index :groups_users, :user_id
  end

  def down
    drop_table :groups_users
  end
end
