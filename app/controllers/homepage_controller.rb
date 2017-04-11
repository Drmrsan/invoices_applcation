class HomepageController < ApplicationController
	def index
		if user_signed_in?
			redirect_to dashboard_path
		end

		@index = true
	end
end