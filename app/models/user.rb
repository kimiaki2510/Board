class User < ApplicationRecord

  #relation
  has_many :tables
  has_many :cards
  has_many :lists

  #validation
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :introduce, length: { maximum: 200 }
  has_secure_password
  has_secure_token
end
