class AddResumeToFaculty < ActiveRecord::Migration
  def change
    unless column_exists? :faculties, :attachment
      add_column :faculties, :attachment, :string
    end
  end
end
