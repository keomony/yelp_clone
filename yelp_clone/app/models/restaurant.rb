class Restaurant < ApplicationRecord

  validates :name, length: {minimum: 3}, uniqueness: true

  def build_review(attributes = {}, user)
    attributes[:user] ||=user
    reviews.build(attributes)
  end


  has_many :reviews, dependent: :destroy
  belongs_to :user

end
