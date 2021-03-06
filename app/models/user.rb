class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 20}
  validates :email, presence: true, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  
  has_secure_password
  validates :password, presence: true
  validates :password, length: {in: 6..32}
  validates :password, format:{with: /\A[a-zA-Z0-9]+\z/}  
  
  has_many :topics
end
