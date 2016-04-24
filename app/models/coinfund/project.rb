module Coinfund
  class Project < ApplicationRecord
    validates :name, presence: true
    validates_format_of :homepage, :with => /\A(https?:\/\/)([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i
    belongs_to :sector

    enum status: [:radar, :watching, :advising, :invested]
  end
end
