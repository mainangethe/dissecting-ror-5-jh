module ApplicationHelper
	
	def login_helper(style = '')
		if current_user.is_a?(GuestUser)
		  (link_to "Register ", new_user_registration_path, class: style ) +
		  " ".html_safe +
		  (link_to "Login", new_user_session_path, class: style)
		else
		  link_to "Logout", destroy_user_session_path, class: style, method: :delete
		end
	end

	def session_source_helper
		if session[:source]
			greeting = "Thank you for visiting us from #{session[:source]}"
			content_tag(:p, greeting, class: "session-source-greeting")
		end
	end

	def copyright_generator_helper
		MradiViewTool::Renderer.copyright('Mradi Kenya Limited', 'All rights reserved')
	end
end
