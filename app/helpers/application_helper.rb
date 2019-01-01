module ApplicationHelper
	
	def login_helper(style = '')
		if current_user.is_a?(GuestUser)
		  (link_to "Register ", new_user_registration_path, class: style ) +
		  " ".html_safe +
		  (link_to "Login", new_user_session_path, class: style)
		else
		  (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
		end
	end

	def session_source_helper(styles = "session-source-greeting")
		if session[:source]
			greeting = "Thank you for visiting us from #{session[:source]},
			Please feel free to #{ link_to 'contact us', hire_us_path, class: 'alert-link' } if you would like us to work together."
			content_tag(:div, greeting.html_safe, class: styles, role: "alert")
		end
	end

	def copyright_generator_helper
		MradiViewTool::Renderer.copyright('Mradi Kenya Limited', 'All rights reserved')
	end

	def navigation_array
		[
			{
				url: root_path,
				title: 'Home'
			},
			
			{
				url: about_us_path,
				title: 'About Us'
			},
			
			{
				url: hire_us_path,
				title: 'Contacts'
			},
			
			{
				url: blogs_path,
				title: 'Blog'
			},
			
			{
				url: tech_news_path,
				title: 'News'
			},

			
			{
				url: portfolios_path,
				title: 'Portfolio'
			}
		]
	end

	def navigation_generator_helper(css_style, html_tag)
		nav_links = ''
		navigation_array.each do |link|
			nav_links << "<#{html_tag}> <a href='#{ link[:url] }' class='#{css_style} #{active?(link[:url])}'> #{link[:title]} </a> </#{html_tag}>"
		end
		
		nav_links.html_safe
	end

	def active?(path)
		"active" if current_page?(path)
	end

	def alert_generator_helper(msg)
		js add_gritter(msg, title: "Mradi Portfolio", sticky: false)	
	end

	def flash_alert_helper
		alert = (flash[:alert] || flash[:notice] || flash[:error])
		alert_generator_helper(alert)
	end
		
end