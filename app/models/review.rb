class Review < ApplicationRecord

  belongs_to :user
  belongs_to :memo

  validates :body, presence: true
  validates :rate, presence: true

end
