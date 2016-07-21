require 'rubygems'
require 'bundler'
Bundler.require

require 'sinatra/asset_pipeline'

require './models/user'
require './app'

run RedmartApp
