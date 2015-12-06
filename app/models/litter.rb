class Litter < ActiveRecord::Base
  has_attached_file :image, styles: {medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of [:status, :body, :title, :image], presence: true

  belongs_to :user
  has_many :comments

  STATUS = {
    0 => "Available",
    1 => "Pending Offers",
    2 => "Sold"
  }
end
