module LeadManagement
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      desc 'This will create initializer files for lead management'
      def create_initializer
        create_file "config/initializers/lead_management.rb"
      end

      desc 'This will create config file for lead management'
      def create_config
        template 'lead_management_config.rb', "#{Rails.root}/config/lead_management_config.rb"
      end
    end
  end
end