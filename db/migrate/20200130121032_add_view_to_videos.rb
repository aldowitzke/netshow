class AddViewToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :view, :integer
  end
end
