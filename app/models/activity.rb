class Activity < ActiveRecord::Base
  has_many :resources
  belongs_to :course
end
