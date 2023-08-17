module LeadManagement
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates/models", __dir__)
      def create_model
        template "model.erb" "#{Rails.root}/app/models/#{file_name}.rb"
      end
    end
  end
end
