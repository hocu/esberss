class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.references :user, index: true
      t.datetime :feed_updated_at
      t.string :url
      t.references :feed, index: true
      t.text :description
      t.datetime :last_build_date
      t.string :language
      t.references :item, index: true

      t.timestamps
    end
  end
end
