require "sinatra/activerecord"
require "sinatra/activerecord/rake"
require 'sinatra/asset_pipeline/task'
require './app'

Sinatra::AssetPipeline::Task.define! App

namespace :db do
  task :load_config
end
