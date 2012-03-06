class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :members
      
      t.timestamps
    end
  end
end
