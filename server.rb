require 'sinatra'
get '/frank-says' do
  "Put this in your pipe and smoke it!"
end

get '/' do
  "running? #{running?}"
end