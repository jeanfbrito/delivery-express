class Route < ApplicationRecord
  has_many :route_clients
  has_many :clients, through: :route_clients
  accepts_nested_attributes_for :clients
  accepts_nested_attributes_for :route_clients
end
