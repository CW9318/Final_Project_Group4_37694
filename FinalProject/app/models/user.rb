class User < ApplicationRecord

    before_save { self.email = email.downcase }
    has_many :evaluations
    has_many :presentations, dependent: :destroy
  
    validates :name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :role, presence: true, inclusion: { in: %w[instructor student], message: "%{value} is not a valid role" }
  
end
