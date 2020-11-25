class CreateShrotenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shrotened_urls do |t|
      t.string :long_url, null: true
      t.string :short_url, null: true
      
    end
  end
end
