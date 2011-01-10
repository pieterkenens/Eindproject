class Student < ActiveRecord::Base
	validates :studentnumber, :first_name, :last_name , :presence => true
	validates :studentnumber, :uniqueness => true
end
