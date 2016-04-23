module Coinfund
  class Sector < ApplicationRecord
    validates :name, presence: true
  end
end
