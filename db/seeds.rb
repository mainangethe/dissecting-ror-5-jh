# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 # We want to create a seed that will allow us to create many posts at once
 10.times do |blog|

 	Blog.create!(
 		title: 	"The Don's Journal 00#{blog + 1}",
 		body: 	"
	 				Dummy starts here...
	 				Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
	 				Praesent nec tincidunt ex. 
	 				Nullam pharetra sapien eu ipsum efficitur lobortis. 
	 				Vestibulum aliquam, lacus at pharetra congue, justo nulla mattis orci, ac laoreet mauris nibh quis lectus. 
	 				Quisque bibendum justo urna, in facilisis ipsum vehicula et. 
	 				Fusce fermentum pellentesque sapien in pellentesque. 
	 				Praesent nec malesuada nunc. Vivamus ex arcu, placerat non nisl mollis, fringilla lobortis leo.

	 				Quisque vestibulum ante sit amet eros congue congue. 
	 				In hac habitasse platea dictumst. 
	 				Ut at tortor non risus aliquam interdum id id purus. 
	 				Cras molestie lacinia efficitur. 
	 				Donec a ante imperdiet, pharetra mauris vitae, pellentesque diam. 
	 				Quisque porta arcu odio, sit amet fringilla nibh tristique non. 
	 				Donec sagittis nunc non felis volutpat accumsan. 
	 				Aenean tellus sem, molestie a mollis ut, interdum et ex. 
	 				Aenean nisi nisl, accumsan non ante eu, tempus posuere sapien. 
	 				Sed sed sapien rhoncus, placerat nulla non, tristique ligula. 
	 				Cras ultrices vestibulum diam at suscipit. 
	 				Mauris fringilla tellus nisl, nec convallis ante fermentum at.

	 				Sed efficitur tellus in nisl congue sodales. 
	 				Maecenas tincidunt, velit id condimentum gravida, tortor metus porttitor quam, at pretium metus purus eget quam. 
	 				Pellentesque ac turpis ultrices, pellentesque dolor eu, molestie nisl. 
	 				Integer at fermentum leo, vel vehicula lectus. 
	 				Nullam in rutrum quam. 
	 				Curabitur blandit sagittis neque. 
	 				In condimentum massa eu vestibulum efficitur. 
	 				Quisque vitae massa lectus. 
	 				Nullam molestie eleifend metus vel interdum. 
	 				Etiam imperdiet tellus in odio gravida, non tristique sapien convallis. 
	 				Vivamus nunc ligula, consectetur non convallis ut, varius ut nulla. Donec vehicula nisl nec dapibus malesuada. 
	 				Ut suscipit leo imperdiet eros rhoncus mattis non in nisi. 
	 				In orci nunc, laoreet quis dui a, imperdiet efficitur ante. 
	 				In pellentesque aliquet nisl at pulvinar. 
	 				Fusce a erat neque.
				"
 	)


 end

 puts "10 blog posts created"

 5.times { |skill| Skill.create!( title: "Dummy Skill #{skill + 1}", percent_utilized: rand(50..90) ) }

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: 			"Portfolio title: #{portfolio_item + 1}",
		subtitle: 		"Dummy Service Provided",
		body:
						"
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Praesent nec tincidunt ex. 
							Nullam pharetra sapien eu ipsum efficitur lobortis. 
							Vestibulum aliquam, lacus at pharetra congue, justo nulla mattis orci, ac laoreet mauris nibh quis lectus. 
							Quisque bibendum justo urna, in facilisis ipsum vehicula et. 
							Fusce fermentum pellentesque sapien in pellentesque. 
							Praesent nec malesuada nunc. 
							Vivamus ex arcu, placerat non nisl mollis, fringilla lobortis leo.

							Quisque vestibulum ante sit amet eros congue congue. 
							In hac habitasse platea dictumst. 
							Ut at tortor non risus aliquam interdum id id purus. 
							Cras molestie lacinia efficitur. Donec a ante imperdiet, pharetra mauris vitae, pellentesque diam. 
							Quisque porta arcu odio, sit amet fringilla nibh tristique non. 
							Donec sagittis nunc non felis volutpat accumsan. 
							Aenean tellus sem, molestie a mollis ut, interdum et ex. 
							Aenean nisi nisl, accumsan non ante eu, tempus posuere sapien. 
							Sed sed sapien rhoncus, placerat nulla non, tristique ligula.
							Cras ultrices vestibulum diam at suscipit. Mauris fringilla tellus nisl, nec convallis ante fermentum at.
						",
		main_image: 	"http://placehold.it/600x400?text=Portfolio+Main+Image+#{portfolio_item + 1}",
		thumb_image: 	"http://placehold.it/350x200?text=Portfolio+Thumb+Image+#{portfolio_item + 1}",
	)
	
end

puts "9 skills created"

