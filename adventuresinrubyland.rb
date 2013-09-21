require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do

end



get '/' do
  @question1 = "What is Ruby?"
 
  erb :index  
end

# post '/twitter' do
#   @tweets = Twitter::Tweet.give_me_tweets(20)
#   @hashtag1 = [:hashtag1]
#   @hashtag2 = [:hashtag2]
#   erb :twitter

  # class tweets 
  #   []
  # end
# end
