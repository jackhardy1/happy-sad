require 'sinatra'
require 'sinatra/flash'
require_relative './lib/sentence'

get '/' do
  erb :index
end

post '/' do
  Sentence.create(params[:sentence])
  redirect '/result'
end

get '/result' do
  @sentence = Sentence.instance
  erb :result
end
