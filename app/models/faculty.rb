class Faculty < ActiveRecord::Base
  mount_uploader :image_path, FacultyImageUploader # Tells rails to use this uploader for this model.
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
