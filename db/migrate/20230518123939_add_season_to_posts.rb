class AddSeasonToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :season, :string
  end
end
