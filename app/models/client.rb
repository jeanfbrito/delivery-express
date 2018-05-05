class Client < ApplicationRecord
  has_many :contacts, inverse_of: :client
  accepts_nested_attributes_for :contacts, allow_destroy: true
  has_many :sales
  has_many :products, through: :sales
  
  accepts_nested_attributes_for :products
  accepts_nested_attributes_for :sales
end
