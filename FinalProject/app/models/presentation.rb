class Presentation < ApplicationRecord
  belongs_to :user
  has_many :evaluations, dependent: :destroy
  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
