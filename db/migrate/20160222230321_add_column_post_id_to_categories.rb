class AddColumnPostIdToCategories < ActiveRecord::Migration
  def change
    new_column :categories, :post_id, :integer
  end
end
