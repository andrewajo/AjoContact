require 'rails'
module AjoContact
  module Generators
    class ViewGenerator << Rails::Generators::Base
      desc "Copy over view files"
      include Rails::Generators

      source_root File.expand_path('../templates', __FILE__)

      def copy_directories
        directory 'app/views', 'ajo_contact'
      end
    end
  end
end