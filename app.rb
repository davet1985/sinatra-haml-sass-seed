require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/twitter-bootstrap'
require 'haml'
require 'sass'

class SeedApp < Sinatra::Base

  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do
    haml :index
  end
  
  get '/styles.css' do
    scss :styles
  end

end