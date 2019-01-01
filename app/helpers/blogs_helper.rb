module BlogsHelper

  def new_blog_link_helper
    if ( logged_in?(:site_admin) )
      
      link = (link_to 'Write a New Post', new_blog_path, class: 'btn btn-success')
      link_2 = (link_to 'Topics', topics_path, class: 'btn btn-link')
  		msg = "Want to share a thought? " + link + link_2

      content_tag(:h3, msg.html_safe, class: "pb-3 mb-4 font-italic border-bottom")	
    end
	end

  def gravatar_helper(user)
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 70
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:line_numbers => :table)
    end
  end

  def markdown_helper(text)
    coderayified = CodeRayify.new(:filter_html => true, 
                                  :hard_wrap => true)
    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      strikethrough: true,
      lax_html_blocks: true,
      superscript: true
    }
    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

  def blog_status_helper(blog)
    blog.draft? ? 'badge badge-secondary' : 'badge badge-primary'
  end

end
