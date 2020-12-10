class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :comment
    validates :address
    validates :image
  end
end
