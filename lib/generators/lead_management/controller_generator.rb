module LeadManagement
  module Generators
    class ControllerGenerator < Rails::Generators::NamedBase
      # source_root File.expand_path("../templates/controllers", __dir__)
      def create_controller_files
        create_file "#{Rails.root}/app/controllers/#{file_name}_controller.rb"
      end
    end
  end
end
