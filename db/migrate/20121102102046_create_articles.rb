class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
