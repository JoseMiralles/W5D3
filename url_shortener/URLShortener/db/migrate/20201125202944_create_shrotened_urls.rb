class CreateShrotenedUrls < ActiveRecord::Migration[5.2]
  def change

    create_table :shrotened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: true
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :shortened_url, :short_url, unique: true
    add_index :shortened_url, :user_id, unique: true

  end
end
