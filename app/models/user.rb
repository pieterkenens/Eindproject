require 'digest/sha1'
class User < ActiveRecord::Base

	attr_accessor :password
	
	validates_length_of :password, :within => 8..25, :on => :create
	before_save :create_hashed_password
	after_save :clear_password

def self.hash(password)
	Digest::SHA1.hexdigest(password)
end

	def self.authenticate(username="",password="")
	user = User.find(username)
	if user && user.password_match?(password)
		return user
	else
		return false
	end
	end


	def password_match?(password="")
		password == User.hash(password)
	end


	private
	
	def create_hashed_password
	unless password.blank?
		self.password = User.hash(password)
	end
	end

	def clear_password
		self.password = nil
	end


end