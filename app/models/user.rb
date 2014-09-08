class User < ActiveRecord::Base
	authenticates_with_sorcery!
  attr_accessor :email, :pasword

  # User::Roles
  # The available roles
  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end
	#validates :password, length: {minimum: 5}
	#validates :password_confirmation: presence: true
	#validates :password_confirmation, presence: true 
	validates :email, uniqueness: true
end
