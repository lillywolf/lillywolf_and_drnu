class AddDataToSong < ActiveRecord::Migration
  def self.up
    add_column :songs, :title, :string
    add_column :songs, :url_ext, :string
    add_column :songs, :group, :string
    add_column :songs, :image_url, :string
  end

  def self.down
    remove_column :songs, :title, :string
    remove_column :songs, :url_ext, :string
    remove_column :songs, :group, :string
    remove_column :songs, :image_url, :string    
  end
end
