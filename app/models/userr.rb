class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_userrs
  belongs_to :resource, :polymorphic => true
end

#class Userr < ActiveRecord::Base
 # attr_accessible :email, :password

  # User::Roles
  # The available roles
 # Roles = [ :admin , :default ]

  #def is?( requested_role )
   # self.role == requested_role.to_s
  e#nd
#end
#end
