class WebImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "800x600", :medium => "300x300>", :thumb => "100x100>" }

  validates :image, :attachment_presence => true
end
