require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/product'
require './app'

use Rack::MethodOverride

run RedmartApp
