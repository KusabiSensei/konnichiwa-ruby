# frozen_string_literal: true

require 'spec_helper'
require_relative '../hello'

RSpec.describe 'The Konnichiwa App' do
  def app
    Sinatra::Application
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('こんにちは世界')
  end

  it 'tells you what Frank says' do
    get '/frank-says'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Put this in your pipe and smoke it.')
  end
end
