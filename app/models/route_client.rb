class RouteClient < ApplicationRecord
  belongs_to :route
  belongs_to :client
  accepts_nested_attributes_for :client
end
