class User < ApplicationRecord
  has_many  :posts
  has_many: :audit_logs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates_presence_of :first_name, :last_name, :phone  


   def full_name
   	last_name.upcase + "," + first_name.upcase
   end

 # validates_presence_of :first_name, :last_name
end
