class Workshop < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  validates :title, presence: true, length: { within: 1..100 }
  validates :discount, numericality: { less_than_or_equal_to: 100 }

  belongs_to :user

  scope :published, -> { where(status: 'published') }
  scope :drafts, -> { where(status: 'draft') }
end
