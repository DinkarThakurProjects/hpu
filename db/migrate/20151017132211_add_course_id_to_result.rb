class AddCourseIdToResult < ActiveRecord::Migration
  def change
    unless column_exists? :results, :course_id
      add_column :results, :course_Id, :integer
    end
    unless column_exists? :announcements, :course_id
      add_column :announcements, :course_Id, :integer
    end
  end
end
