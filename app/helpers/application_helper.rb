module ApplicationHelper
	
	def login_helper
		if current_user.is_a?(User)
		  link_to "Logout", destroy_user_session_path, method: :delete
		else
		  (link_to "Register ", new_user_registration_path) +
		  "<br>".html_safe +
		  (link_to "Login", new_user_session_path)
		end
	end

	def session_source_helper
		if session[:source]
			greeting = "Thank you for visiting us from #{session[:source]}"
			content_tag(:p, greeting, class: "session-source-greeting")
		end
	end
end
