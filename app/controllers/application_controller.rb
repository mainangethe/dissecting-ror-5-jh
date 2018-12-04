class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	include DeviseWhitelist

	before_action :select_source

	def select_source
		session[:source] = params[:q] if params[:q]
	end

end
