module PortfoliosHelper
	def image_generator(height:,width:)
		"http://placehold.it/#{height}x#{width}"	
	end

	def image_generator_with_text(height:, width:, placeholder:)
		url = placeholder.downcase.gsub(" ", "+")
		"http://placehold.it/#{height}x#{width}?text=#{url}"
	end

	def portfolio_image_helper(image, type)
		
		if (image.model.thumb_image? || image.model.main_image?)
			image
		
		elsif (type == 'thumb')
			image_generator(height: '356', width: '280')
		
		elsif (type == 'main')
			image_generator(height: '600', width: '400')

		end
	end


end