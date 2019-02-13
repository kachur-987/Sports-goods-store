class Product < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON # If you use SQLite, add this line.

  has_one :country
  has_one :category

  validates :title, :price, :description, :producer, presence: true
end
