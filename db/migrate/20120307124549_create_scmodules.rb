class CreateScmodules < ActiveRecord::Migration
  def change
    create_table :scmodules do |t|
      t.string :name
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
