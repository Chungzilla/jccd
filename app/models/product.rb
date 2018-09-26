class Product < ApplicationRecord
  belongs_to :category
  belongs_to :size, optional:true
  belongs_to :colorway, optional:true
  belongs_to :design, optional:true
  has_many :inventories
  has_many :users, :through => :inventories
  
  validates :name, :description, :category_id, presence: true
  
  has_one_attached :photo
end
