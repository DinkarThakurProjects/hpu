class Result < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name,  use: [:slugged, :history,:finders]
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.

  enum course_name:  ['Genral', 'MCA', 'M.Tech', 'Ph.D' ]
  def course_name_enum
    ['Genral','MCA', 'M.Tech', 'Ph.D' ].each_with_index.to_a
  end
end
