class User < ApplicationRecord
    has_secure_password
    
    has_many :orders, dependent: :destroy
    has_many :items, through: :orders
    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews

    validates :username, :password, presence: true
    validates :password, confirmation: true
    validates :username, uniqueness: { case_sensitive: false }
end
