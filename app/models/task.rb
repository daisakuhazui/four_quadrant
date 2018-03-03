class Task < ApplicationRecord
  belongs_to :user, optional: true
  enum urgency: { 緊急度高: 0, 緊急度低: 1 }
  enum importance: { 重要度高: 0, 重要度低: 1 }
end
