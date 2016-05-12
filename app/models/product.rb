class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :condition
  belongs_to :user
  has_many :line_items

  geocoded_by :address
  after_validation :geocode
end
