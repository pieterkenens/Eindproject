class SubjectController < ApplicationController
	
	def list
		@subjects = Subject.order("subjects.position ASC")
	end

end
