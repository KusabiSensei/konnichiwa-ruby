# frozen_string_literal: true

require 'sinatra'

get '/' do
  return 'こんにちは世界'
end

get '/frank-says' do
  'Put this in your pipe and smoke it.'
end
