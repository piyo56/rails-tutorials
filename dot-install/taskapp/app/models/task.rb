class Task < ActiveRecord::Base
  belongs_to :project

  validates :title,
    presence: {message: "タイトルが空です。入力して下さい"}
  scope :unfinished, -> { where(done: false) }
end

