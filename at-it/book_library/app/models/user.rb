class User < ActiveRecord::Base
  has_one :book

  validates :name,
    presence: {message: "名前を入力して下さい"}

  validates :department,
    presence: {message: "部署を入力して下さい"}
end

