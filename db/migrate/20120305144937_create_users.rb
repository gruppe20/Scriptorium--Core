class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username # same as email
      t.string :realname # full name

      t.timestamps
    end
  end
end
