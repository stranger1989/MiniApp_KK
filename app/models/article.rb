class Article < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :article, presence: true
end
