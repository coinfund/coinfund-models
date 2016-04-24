module Coinfund
  class Sector < ApplicationRecord
    include TableName
    validates :name, presence: true, uniqueness: true
  end
end
