module LeadManagement
  module Generators
    module LeadHelpers

      def migration_path
        @migration_path ||= File.join("db", "migrate")
      end

      def migration_version
        Rails.version
      end
    end
  end
end