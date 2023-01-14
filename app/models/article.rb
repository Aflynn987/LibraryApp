class Article < ApplicationRecord
  include Visible

  has_many :comments

  validates :title, presence: true
  validates :image, presence: true
  validates :body, presence: true
end
