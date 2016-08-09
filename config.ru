APP_ROOT = __dir__
require "./config/application.rb"
use Rack::MethodOverride
TodoApplication = PandaTodo::Application.new

require_relative "config/routes"

run TodoApplication
