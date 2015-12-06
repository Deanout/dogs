class Litter < ActiveRecord::Base
	has_attached_file :image, styles: {medium: "300x300>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	belongs_to :user
	has_many :comments
end
