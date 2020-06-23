class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
end
