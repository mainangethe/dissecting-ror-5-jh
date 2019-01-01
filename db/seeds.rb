# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_count = 2
user_count.times do |user|
	User.create!(
		name: "Admin#{ user + 1 } User",
		email: "admin#{ user + 1 }@mradi.co.ke",
		password: 'password',
		password_confirmation: 'password',
		roles: "site_admin"
	)	
end

puts "#{user_count} Admin Users created"

user_count = 3
user_count.times do |user|
	User.create!(
		name: "Normal#{ user + 1 } User",
		email: "user#{ user + 1 }@mradi.co.ke",
		password: 'password',
		password_confirmation: 'password'
	)	
end

puts "#{user_count} Normal Users created"
# Let's create 3 topics
topic_count = 3
topic_count.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
	
end

puts "#{topic_count} Topics created"

 # We want to create a seed that will allow us to create many posts at once
 10.times do |blog|

 	Blog.create!(
 		title: 	"The Don's Journal 00#{blog + 1}",
 		body: 	"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec tincidunt ex. Nullam pharetra sapien eu ipsum efficitur lobortis. Vestibulum aliquam, lacus at pharetra congue, justo nulla mattis orci, ac laoreet mauris nibh quis lectus. Quisque bibendum justo urna, in facilisis ipsum vehicula et. Fusce fermentum pellentesque sapien in pellentesque. Praesent nec malesuada nunc. Vivamus ex arcu, placerat non nisl mollis, fringilla lobortis leo.

Quisque vestibulum ante sit amet eros congue congue. 
In hac habitasse platea dictumst. 
Ut at tortor non risus aliquam interdum id id purus. 
Cras molestie lacinia efficitur.",

		topic_id: Topic.last.id
 	)


 end

 puts "10 blog posts created for the last topic"

 5.times { |skill| Skill.create!( title: "Dummy Skill #{skill + 1}", percent_utilized: rand(50..90) ) }

puts "5 skills created"

6.times do |portfolio_item|
	Portfolio.create!(
		title: 			"Portfolio title: #{portfolio_item + 1}",
		subtitle: 		"Ruby on Rails",
		body:			"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec tincidunt ex. Nullam pharetra sapien eu ipsum efficitur lobortis. Vestibulum aliquam, lacus at pharetra congue, justo nulla mattis orci, ac laoreet mauris nibh quis lectus. ",
		main_image: 	"http://placehold.it/600x400",
		thumb_image: 	"http://placehold.it/356x280",
	)
	
end

3.times do |portfolio_item|
	Portfolio.create!(
		title: 			"Portfolio title: #{portfolio_item + 1}",
		subtitle: 		"Angular",
		body:			"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec tincidunt ex. Nullam pharetra sapien eu ipsum efficitur lobortis.",
		main_image: 	"http://placehold.it/600x400",
		thumb_image: 	"http://placehold.it/356x280",
	)
	
end
puts "9 portfolio items created (6-Ror, 3-Angular)"

# generate 3 dummy technologies for each portfolio
Portfolio.all.each do |portfolio|
	tech_count = 3
	tech_count.times { |index| portfolio.technologies.create!(name: "Techonology #{index + 1}") }
end

puts "#{Portfolio.all.length * 3} technologies created."