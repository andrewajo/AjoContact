require 'rails'
module AjoContact
  class Engine < ::Rails::Engine
    isolate_namespace AjoContact
    paths["config/locales"]
    generators do
      require "app/lib/generators/ajo_contact/install_generator.rb"
    end
  end
end
