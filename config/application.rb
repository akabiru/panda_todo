require "panda"
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module PandaTodo
  class Application < Panda::Application ; end
end
