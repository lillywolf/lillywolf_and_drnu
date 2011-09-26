class AddSoundcloudDataToSong < ActiveRecord::Migration
  def self.up
    add_column :songs, :sc_swfurl_1, :string
    add_column :songs, :sc_swfurl_2, :string
  end

  def self.down
    remove_column :songs, :sc_swfurl_1, :string
    remove_column :songs, :sc_swfurl_2, :string
  end
end
