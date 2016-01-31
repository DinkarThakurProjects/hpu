class CreateNonTeachingStaffs < ActiveRecord::Migration
  def change
    create_table :non_teaching_staffs do |t|
      t.string :name
      t.string :image_path
      t.string :designation
      t.string :qualification
      t.integer :joined_in
      t.boolean :is_technical

      t.timestamps null: false
    end
  end
end
