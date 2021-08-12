class Micropost < ApplicationRecord
  # 1つのmicropostは1つのユーザにのみ属する
  belongs_to :user
  validates :content, length: { maximum: 140 }
end
