class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :heading
      t.text :description

      t.timestamps null: false
    end
  end
end
