module Coinfund
  class Sector < ApplicationRecord
    include Concerns::TableName
    validates :name, presence: true, uniqueness: true
  end
end
