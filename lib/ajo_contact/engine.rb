require 'rails'
module AjoContact
  class Engine < ::Rails::Engine
    isolate_namespace AjoContact
    config.autoload_paths << File.expand_path("../lib/generators", __FILE__)
    paths["config/locales"]
  end
end
