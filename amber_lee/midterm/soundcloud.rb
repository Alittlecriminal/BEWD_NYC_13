require 'soundcloud'
require 'pry'

puts 'What is your soundcloud username?'
username = gets.strip


client = SoundCloud.new({
  :client_id     => 'b1f6930fc7670544a01e86c01d05e6a9',
  :client_secret => '80891f4d4cbf6e1ded4be1a9c4966b04',
  :username      => 'amber.a.lee@gmail.com',
  :password      => 'leighton'
})

favorites = client.get("/users/#{username}/favorites").map { |favorite| favorite['permalink_url']}

puts "Hey #{username}! Check out your favorites:"
puts "__________________________________"
puts favorites



playlist = client.get("/me/playlists").first

first_url = playlist['permalink_url']

puts "#{username}, you should also check out your Sets"
puts "__________________________________"
puts first_url
