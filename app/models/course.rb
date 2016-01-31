class Course < ActiveRecord::Base
  mount_uploader :syllabus, AttachmentUploader # Tells rails to use this uploader for this model.
  has_many :results, inverse_of: :course,:dependent => :destroy
  has_many :announcement, inverse_of: :course,:dependent => :destroy


end
