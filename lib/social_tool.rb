module SocialTool
	def self.twitter_search
		# Build a Connection
		client = Twitter::REST::Client.new do |config|
			config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
		 	config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
		  	config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
		  	config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
		end

		# Use the connection to get some tweets
		client.search("#tech + #news", result_type: 'recent').take(12).collect do |tweet|
			"#{tweet.user.screen_name}: #{tweet.text}" 
		end


	end
end