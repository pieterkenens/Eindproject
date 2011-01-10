class Docent < ActiveRecord::Base
	validates :docentnumber, :first_name, :last_name , :presence => true
	validates :docentnumber, :uniqueness => true
end
