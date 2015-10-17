class RenameCourseId < ActiveRecord::Migration
  def change
    remove_column :results, :course_Id
    remove_column :announcements, :course_Id
    unless column_exists? :results, :course_id
      add_column :results, :course_id, :integer
    end
    unless column_exists? :announcements, :course_id
      add_column :announcements, :course_id, :integer
    end
  end
end
