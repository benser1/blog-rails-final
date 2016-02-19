class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.belongs_to :user_id, index: true, foreign_key: true
      t.belongs_to :post_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
