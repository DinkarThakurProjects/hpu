class Announcement < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :heading, presence: true # Make sure the owner's name is present.
  belongs_to :course,  inverse_of: :announcement, class_name: 'Course'
end
