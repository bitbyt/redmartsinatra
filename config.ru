require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/product'
require './models/category'
require './app'

use Rack::MethodOverride

run RedmartApp
