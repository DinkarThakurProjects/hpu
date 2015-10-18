class Result < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name,  use: [:slugged, :history,:finders]
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
  belongs_to :course, inverse_of: :results
end
