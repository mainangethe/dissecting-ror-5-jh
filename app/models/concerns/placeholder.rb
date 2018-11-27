module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:,width:)
		"http://placehold.it/#{height}x#{width}"	
	end

	def self.image_generator_with_text(height:, width:, placeholder:)
		url = placeholder.downcase.gsub(" ", "+")
		"http://placehold.it/#{height}x#{width}?text=#{url}"
	end
end