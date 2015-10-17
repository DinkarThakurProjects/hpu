class Result < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name,  use: [:slugged, :history,:finders]
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.


  belongs_to :course, inverse_of: :results
  #attr_accessible :course_id
  #accepts_nested_attributes_for :team, :allow_destroy => true

  #
  # enum course_name:  ['Genral', 'MCA', 'M.Tech', 'Ph.D' ]
  # def course_name_enum
  #   ['Genral','MCA', 'M.Tech', 'Ph.D' ].each_with_index.to_a
  # end
  #
end
