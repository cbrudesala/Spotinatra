require 'sinatra'
require "sinatra/reloader"
require 'artii'

get '/artii/:sentence' do
  @sentence = params["sentence"]
  x = Artii::Base.new
  @asciiSentence = x.asciify(@sentence)
	erb :index
end

