class HomepageController < ApplicationController
	def index
		 @index = true
		if user_signed_in?
			redirect_to dashboard_path
		end
	end
end