require 'rails/generators/base'
module AjoContact
  class InstallGenerator < Rails::Generators::Base
    desc "Copy over view files"

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'ajo_contact')
    end

    def copy_directories
      directory 'contact', 'app/views/ajo_contact/contact'
    end
  end
end