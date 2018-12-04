module DefaultPageContentConcern
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = 'Mradi Portfolio'
		@seo_keywords = "Mradi Kenya Portfolio, Mradi Portfolio"
	end
end