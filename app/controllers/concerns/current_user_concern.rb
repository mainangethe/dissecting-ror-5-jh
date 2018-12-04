module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		OpenStruct.new(	name: "Guest Visitor", 
						first_name: "Guest",
						last_name: "Visitor", 
						email:"guest.visitor@gmail.com"
					  )
	end
end