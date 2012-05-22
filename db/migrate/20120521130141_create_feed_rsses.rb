class CreateFeedRsses < ActiveRecord::Migration
  def change
    create_table :feed_rsses do |t|
      t.string :url

      t.timestamps
    end
  end
end
