class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: {in: 1..200}
  validates :content, presence: true
end
