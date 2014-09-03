class Instructor < ActiveRecord::Base
  belongs_to :document
  belongs_to :area
  belongs_to :userr
  belongs_to :online

  #paginacion

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 2).order("name")
  end

  #validates :number_document, :presence => true
  validates :name, :presence => true
  validates :gender, :presence => true
  validates :email, :presence => true
  validates :last_name, :presence => true


end
