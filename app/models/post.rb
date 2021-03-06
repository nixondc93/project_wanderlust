class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, length: {in: 1..200}
  validates :content, presence: true
end
