class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :image_path
      t.string :qualification
      t.integer :joined_year
      t.integer :total_experience
      t.boolean :is_chairman

      t.timestamps null: false
    end
  end
end
