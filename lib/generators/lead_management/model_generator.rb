module LeadManagement
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      def create_model
        create_file "#{Rails.root}/app/models/#{file_name}.rb", <<~RUBY
          class #{file_name.capitalize} < ApplicationRecord
            
          end
        RUBY
      end
    end
  end
end
