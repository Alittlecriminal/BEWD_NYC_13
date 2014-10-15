require 'pry'
require 'vine_client'

 
puts "What is your Vine email?"
email = gets.strip
puts "What is your password to Vine.co?"
password = gets.strip
 
# Since we already have the `email` and `password` stored in variables, we can
# pass those variables as parameters to the below method, no need to
# interpolate
user = Vine::Client.new(email, password)
user_id = user.user_info['userId']
vine_data = user.user_info(user_id)

# Since we're only getting data from one user, there is no need for `.map`, we
# can just get the information for the one user and map it to this `info` hash
info = {
  avatar_url: vine_data['avatarUrl'],
  username: vine_data['username'],
  share_url: vine_data['shareUrl'],
  loop_count: vine_data['loopCount'],
  followers: vine_data['followerCount'],
  description: vine_data['description']
}
 
# Since there is only one hash, we can get away with not having to loop and
# simply interpolating the variables into this HTML string
html = "<html>
<head>

  <title>Vine Stats></title>
</head>
<body>
  <a href='#{info[:share_url]}'>
  <img src='#{info[:avatar_url]}' width='200' height='200' />
  </a>
  <h2>Username: #{info[:username]}</h2>
  <h2>Loops: #{info[:loop_count]}</h2>
  <h2>Followers: #{info[:followers]}</h2>
  <h2>Bio: #{info[:description]}</h2>
  <br><br>
</body>
</html>"
 
File.write('nokogiri.html', html)



