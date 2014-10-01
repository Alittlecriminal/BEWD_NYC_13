require 'rest-client'
require 'json'
require 'pry'


#this is from: GET /repos/:owner/:repo/forks on the git hub API documentation

username = 'bewd-student'
password = 'correcthorsebatterystaple'

url = "https://#{username}:#{password}@api.github.com/repos/ga-students/BEWD_NYC_13/forks"

#class starts with a capital letter. It is running a method called get and storing it in a variable called response
response = RestClient.get(url)
parsed_response = JSON.parse(response) #parsing the data on this line.

parsed_response = JSON.parse(response) #storing the JSON Calculation in parsed_response

forks = parsed_response.map do |fork| #i want you to loop over parsed response using map, and then creating a hash inside the map
  {
    username: fork['owner']['login'],
    avatar_url: fork['owner']['avatar_url'],
    url: fork['owner']['html_url']
  }
end

html = '<html>
<head>
  <title>BEWD Forks</title>
</head>
<body>'

forks.each do |fork|
  html << "<a href='#{fork[:url]}'>
  <img src='#{fork[:avatar_url]}' width='200' height='200' />
  </a>
  <h2>#{fork[:username]}</h2>
  <br><br>"
end

html << '</body>
</html>'


File.write('forks.html', html)