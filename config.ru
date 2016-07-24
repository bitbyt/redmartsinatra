require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/product'
require './models/category'
require './models/brand'
require './app'

use Rack::MethodOverride

run RedmartApp
