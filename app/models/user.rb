class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :userable, polymorphic: true, optional:true

  has_many :inventories
  has_many :products, :through => :inventories

  has_one_attached :photo

  validates :first_name, :last_name, :username, :email, :password, presence: true
  
  validates :email, :username, uniqueness: true
end
