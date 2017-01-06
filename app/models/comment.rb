class Comment < ApplicationRecord
  belongs_to :post, dependent: :destroy
  belongs_to :user, optional: true
end
