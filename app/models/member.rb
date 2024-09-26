class Member < ApplicationRecord
  belongs_to :user
  has_many :facts, dependent: :destroy

  validates :first_name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :last_name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
