class Area < ActiveRecord::Base
	has_many :operations
	has_many :instructors
    #valida que los datos no se puedan repetir
	validates :name, :presence => true
	validates :description, :presence => true
	#valida que los datos sean unicos
    validates :name, uniqueness: { message: "No se puede repetir"}

end
