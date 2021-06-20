class User < ApplicationRecord
  # 1のユーザに複数のmicropostがある
  has_many :microposts
end
