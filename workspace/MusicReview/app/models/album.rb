class Album < ActiveRecord::Base
	belongs_to :user


# paperclip requirements just copy and paste
	has_attached_file :image, styles: { medium: "300x300>", thumb: "300x300#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
