class Post < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :comment
    validates :address
    # validates :image
  end
end
