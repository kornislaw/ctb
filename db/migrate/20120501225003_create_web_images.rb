class CreateWebImages < ActiveRecord::Migration
  def change
    create_table :web_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
