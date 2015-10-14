class AddSlugToResult < ActiveRecord::Migration
  def change
    add_column :results, :slug, :string, unique: true
  end
end
