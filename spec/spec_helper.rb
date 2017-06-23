require 'rubygems'
require 'bundler/setup'

Bundler.require :default, :test

require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

require File.dirname(__FILE__)+'/../demo_app'

Capybara.app = DemoApp::Application
Capybara.default_driver = :selenium

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    DemoApp::Application
  end
end
