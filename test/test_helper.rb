ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
Resque.inline = ENV['RAILS_ENV'] == "test"
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/pride'
require 'minitest/spec'
require 'mocha/setup'
require 'minitest/autorun'