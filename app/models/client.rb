class Client < ApplicationRecord
  has_many :contacts, inverse_of: :client
  accepts_nested_attributes_for :contacts, allow_destroy: true
  has_many :products, through: :sales
end
