class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :description, presence: true
  validates :image, presence: true
  validates :category_id, presence: true

  mount_uploader :image, ImageUploader
end
