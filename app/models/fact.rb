class Fact < ApplicationRecord
  belongs_to :member

  validates :fact_text, presence: true
  validates :likes, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :member_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates_associated :member
end