class Group < ActiveRecord::Base
	has_many :opers

	validates :number, :presence => true
	validates :name, uniqueness: { message: "No se puede repetir"}
end
