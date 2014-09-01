class Instructor < ActiveRecord::Base
  belongs_to :document
  belongs_to :area
  belongs_to :user
  belongs_to :online
end
