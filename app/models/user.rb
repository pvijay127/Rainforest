class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true
  validates :password, length: 8..20

  has_many :reviews
  has_many :products, through: :reviews
end
