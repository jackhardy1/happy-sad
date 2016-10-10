require 'sinatra'
require 'sinatra/base'
require_relative './lib/sentence'

class HappySad < Sinatra::Base

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

end
