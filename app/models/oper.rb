class Oper < ActiveRecord::Base
  belongs_to :document
  belongs_to :online
  belongs_to :group
end
