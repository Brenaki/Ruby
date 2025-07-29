class Product < ApplicationRecord
  include Notifications

  # email
  has_many :subscribers, dependent: :destroy

  # Attached Images
  has_one_attached :featured_image

  # Text Area of description
  has_rich_text :description

  # Not opcional name
  validates :name, presence: true

  # Validate inventory > 0
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }

  after_update_commit :notify_subscribers, if: :back_in_stock?

  def back_in_stock?
    inventory_count_previously_was.zero? && inventory_count > 0
  end

  def notify_subscribers
    subscribers.each do |subscriber|
      ProductMailer.with(product: self, subscriber: subscriber).in_stock.deliver_later
    end
  end
end
