ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "manually dropping databases"
task  :drop do
    puts "deleting databases..."
    system "rm db/test.sqlite && rm db/schema.rb"
end