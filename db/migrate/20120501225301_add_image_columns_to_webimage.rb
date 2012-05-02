class AddImageColumnsToWebimage < ActiveRecord::Migration
  def self.up
    change_table :web_images do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :web_images, :image
  end
end