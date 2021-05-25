class User < ApplicationRecord
  VALID_EMAIL = /\A\w+@\w+\.[a-z]+\z/

  has_many :events

  validates :name,
            presence: true,
            length: { maximum: 35 }

  validates :email,
            uniqueness: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL }
end
