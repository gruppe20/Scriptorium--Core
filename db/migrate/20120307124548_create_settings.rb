class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :auth_module

      t.timestamps
    end
  end
end
