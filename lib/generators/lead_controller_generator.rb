module Generators
  class LeadControllerGenerator < Rails::Generators::NamedBase
    def create_controller_files
      create_file "#{Rails.root}/controllers/#{file_name}_controller.rb", <<~RUBY
        class #{file_name.capitalize}Controller < ApplicationController
          puts "i am lead #{file_name} controller"
        end
      RUBY
    end
  end
end