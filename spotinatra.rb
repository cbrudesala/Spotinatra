require 'sinatra'
require "sinatra/reloader"

@@SONG_LIST = []

get '/' do
	erb :index
end

post '/songs/new' do
	@name = params["name"]
	@artist = params["artist"]
	if (@name == "" || @artist == "")
		redirect "/error"
	end
  @new_song = [@name, @artist]
  @@SONG_LIST.push(@new_song)
  redirect "/"
end

get '/enough' do
	"IS WORTH F**ING NOTHING"
end

get '/error' do
	"You've missed something, go back and try again!"
end


