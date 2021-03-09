class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :nombre, use: :slugged
  belongs_to :user
end
