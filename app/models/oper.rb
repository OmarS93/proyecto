class Oper < ActiveRecord::Base
  belongs_to :document
  belongs_to :online
  belongs_to :group

  validates :number_document, :presence => true
  validates :name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :telephone, :presence => true
  #validates :formation, :presence => true
  validates :date_home, :presence => true
  validates :date_end, :presence => true

   def self.search(search, page)
    where(['upper(name) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 1).order("name")
  end
end
