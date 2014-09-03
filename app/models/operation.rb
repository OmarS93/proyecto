class Operation < ActiveRecord::Base
  belongs_to :area
  validates :name, :presence => true
  validates :description, :presence => true
  validates :machine, :presence => true
  validates :time_stadar, :presence => true

  validates :name, uniqueness: { message: "No se puede Repetir"}
  
   def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 1).order("name")
  end
end
