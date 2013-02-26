require 'rails'
module AjoContact
  class Engine < ::Rails::Engine
    isolate_namespace AjoContact
    paths["config/locales"]
    paths["lib"]
    config.autoload_paths += %W(#{config.root}/lib)

  end
end
