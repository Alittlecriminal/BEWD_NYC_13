require 'rest-client'
require 'json'
require 'pry'

url = 'http://reddit.com/r/cats.json'

response = RestClient.get(url)
parsed_response = JSON.parse(response)

posts = parsed_response['data']['children'].map do |post|
  title = post['data']['title']
  category = post['data']['subreddit']
  raw_upvotes = post['data']['score']
  upvotes = calculate_upvotes(title, category, raw_upvotes)

  { title: title, category: category, upvotes: upvotes }
end