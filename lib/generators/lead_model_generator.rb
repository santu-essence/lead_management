class Generators::LeadModelGenerator < Rails::Generators::NamedBase
  def create_model
    create_file "#{Rails.root}/app/models/#{file_name}.rb", <<~RUBY
      class #{file_name.capitalize} < ActiveRecord::Base
        
      end
    RUBY
  end
end
