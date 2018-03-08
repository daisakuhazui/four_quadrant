class Task < ApplicationRecord
  belongs_to :user, optional: true
  enum quadrant: { 必須: 0, 必要: 1, 錯覚: 2, 無駄: 3 }

  validates :title, presence: true
  validates :title, length: { maximum: 50 }
end
