class AddCourseEnumToResult < ActiveRecord::Migration
  def change
    add_column :results, :course_name, "enum('MCA','M.Tech','Ph.D')", :default => 'MCA'
  end
end
