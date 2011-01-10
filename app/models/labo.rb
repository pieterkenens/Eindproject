class Labo < ActiveRecord::Base
	validates :naam, :lokaal , :presence => true
	validates :naam, :uniqueness => true
end
