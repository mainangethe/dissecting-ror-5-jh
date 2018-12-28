module BlogsHelper

  def new_blog_link_helper
    if ( logged_in?(:site_admin) )
      
      link = (link_to 'Write a New Post', new_blog_path, class: 'btn btn-success')
  		msg = "Want to share a thought? " + link

      content_tag(:h3, msg.html_safe, class: "pb-3 mb-4 font-italic border-bottom")	
  	end
	end

  def gravatar_helper(user)
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 70
  end

end
