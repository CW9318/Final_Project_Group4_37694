class User < ApplicationRecord

    before_save {self.email = email.downcase}
    validates :name, presence: true, length: {maximum: 15}

    validates :email, presence: true, length: {maximum: 50}

    validates :role, presence: true

end
