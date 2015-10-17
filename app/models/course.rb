class Course < ActiveRecord::Base
  has_many :results, inverse_of: :course,:dependent => :destroy
  has_many :announcement, inverse_of: :course,:dependent => :destroy


end
