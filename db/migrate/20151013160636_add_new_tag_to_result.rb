class AddNewTagToResult < ActiveRecord::Migration
  def change
    add_column :results, :is_new, :boolean
  end
end
