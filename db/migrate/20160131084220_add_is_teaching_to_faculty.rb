class AddIsTeachingToFaculty < ActiveRecord::Migration
  def change
    add_column :faculties, :is_teaching, :boolean
  end
end
