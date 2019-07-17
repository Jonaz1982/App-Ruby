class Client < ApplicationRecord
  validates_presence_of :name
  has_many :buys, class_name: 'Sale'
end
