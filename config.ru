require "./config/application.rb"

TodoApplication = PandaTodo::Application.new

require_relative "config/routes"

run TodoApplication
