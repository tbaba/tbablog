class AddStatusToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :status, :integer, default: 0, null: false
  end
end
