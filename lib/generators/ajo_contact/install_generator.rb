require 'rails/generators/base'
module AjoContact
  class InstallGenerator < Rails::Generators::Base
    desc "Copy over view files"

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'template')
    end

    def copy_directories
      directory 'ajo_contact', 'app/views/ajo_contact/'
    end
  end
end