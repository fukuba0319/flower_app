class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 20}
  validates :email, presence: true, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end
