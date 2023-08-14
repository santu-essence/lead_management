module Generators
  class LeadModelGenerator < Rails::Generators::NamedBase
    def create_model
      create_file "#{Rails.root}/app/models/#{file_name}.rb", <<~RUBY
        class #{file_name.capitalize} < ActiveRecord::Base
          puts "i am lead #{file_name} model"
        end
      RUBY
    end
  end
end