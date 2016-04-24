module Coinfund::Concerns
  module TableName
    extend ActiveSupport::Concern

    included do
      def self.table_name
        self.name.demodulize.underscore.pluralize
      end
    end
  end
end