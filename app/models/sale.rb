class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :product
  accepts_nested_attributes_for :product
end
