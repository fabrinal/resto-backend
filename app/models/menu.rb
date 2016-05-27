class Menu < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
   has_attached_file :menu_photo,
                      styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png",
                      path: "public/images/:class/:style/:filename",
                      url: "/images/:class/:style/:filename"
  validates_attachment_content_type :menu_photo, content_type: /\Aimage\/.*\Z/
end
