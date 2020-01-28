class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :url
      t.references :user, foreign_key: true
    end
  end
end
