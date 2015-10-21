class HomeController < ApplicationController
	def index
		if user_signed_in?
	 	 	@groups = current_user.groups
	 	end
	end
end
