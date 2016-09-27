class Project < ActiveRecord::Base
  has_many :tasks

  validates :title,
    presence: {message: "タイトルが空です。入力して下さい"},
    length: { minimum: 3, message: "タイトルが短すぎます。3文字以上入力して下さい"}
end
