class Product < ApplicationRecord
  belongs_to :category
  belongs_to :size
  belongs_to :colorway
  belongs_to :design
end