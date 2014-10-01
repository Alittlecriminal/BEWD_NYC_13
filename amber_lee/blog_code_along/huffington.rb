#this is the runner file, that knows about all the different code in different files
require_relative 'lib/post.rb'
require_relative 'lib/author.rb'


puts "Hello, welcome to Huffington Post"

puts 'We need some of your information, please enter below.'

author = Author.new

puts 'Please enter your first name'
author.first_name = gets.strip

puts 'Please enter your last name'
author.last_name = gets.strip

puts 'Please enter your email'
author.email = gets.strip

post = Post.new

puts 'Thanks for entering you info, lets add a blog'
puts 'Please enter the title of you blog post'
post.title = gets.strip

puts 'Please enter body of your post'
post.body = gets.strip

post.author = author

puts '____' #this is just to break up the page


puts "Title: #{post.title}"
puts "By #{post.author.full_name}, Email: #{post.author.email}"
puts post.body

