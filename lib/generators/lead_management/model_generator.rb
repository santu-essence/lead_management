module LeadManagement
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      include Rails::Generators::Migration
      include LeadManagement::Generators::LeadHelpers

      argument :attributes, type: :array, default: [], banner: "field:type field:type"
      source_root File.expand_path("../templates/models", __dir__)
      def create_model
        template "model.erb", "#{Rails.root}/app/models/#{file_name}.rb"
      end

      def create_migration_file
        source_root File.expand_path("../templates/migration", __dir__)
        migration_template "migration.eb", "#{migration_path}/create_#{table_name}.rb", migration_version: migration_version
      end
    end
  end
end
