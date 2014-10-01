require 'rest-client'
require 'json'
require 'pry'

url = 'https://api.vineapp.com/'
response = RestClient.get(url)
parsed_response = JSON.parse(response)

binding.pry

profiles = parsed_response['some_hash']['second_hash'].map do |profile|
  username = 
  followers = 
  overall_loops = 
  bio = 
  vine_url = 
 end 

posts = parsed_response['some_hash']['second_hash'].map do |post|
  likes = 
  loops =
  revines = 
 end 


 profiles.each do |profile|
  puts "username: #{post[:title]}"
  puts "followers: #{post[:category].capitalize}"
  puts "overall_loops: #{post[:upvotes]}"
  puts "bio: #{post[:upvotes]}"
  puts "vine_url: #{post[:upvotes]}"
  puts
end

 posts.each do |post|
  puts "likes: #{post[:title]}"
  puts "loops: #{post[:category].capitalize}"
  puts "revines: #{post[:upvotes]}"
  puts
end