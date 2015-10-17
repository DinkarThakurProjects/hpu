class Announcement < ActiveRecord::Base
  belongs_to :course,  inverse_of: :announcement, class_name: 'Course'
end
