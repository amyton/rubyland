require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
# require 'lib/twitter.rb'

get '/' do
  @name = "Amy"
  @show_description = true
  erb :index  
end

post '/twitter' do
  params[:hastag1]
  params[:hashtag2]
  erb :twitter

  # class tweets 
  #   []
  # end
end
