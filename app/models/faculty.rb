class Faculty < ActiveRecord::Base
  mount_uploader :image_path, ImageUploader # Tells rails to use this uploader for this model.
end
