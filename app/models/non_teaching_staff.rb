class NonTeachingStaff < ActiveRecord::Base
  mount_uploader :image_path, FacultyImageUploader # Tells rails to use this uploader for this model.
end
