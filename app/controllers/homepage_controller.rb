class HomepageController < ApplicationController
	def index
		if user_signed_in? && current_user.first_name.blank?
			redirect_to edit_user_registration_path
		else
			redirect_to dashboard_path
		end

		@index = true
	end
end