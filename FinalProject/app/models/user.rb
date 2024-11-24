class User < ApplicationRecord

    before_save { self.email = email.downcase }
  
    validates :name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :role, presence: true, inclusion: { in: %w[instructor student], message: "%{value} is not a valid role" }
  
  end
