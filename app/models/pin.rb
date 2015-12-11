class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :user

	has_attached_file :image, styles: {medium: "300x300>"},
	:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
	:url => "/system/:attachment/:id/:style/:filename"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
