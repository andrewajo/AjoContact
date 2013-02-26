require 'rails/generators'
module AjoContact
  module Generators
    class ViewGenerator << Rails::Generators::Base
      desc "Copy over view files"

      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      def copy_directories
        directory 'app/views', 'ajo_contact'
      end
    end
  end
end