class AddDataToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :date, :string
    add_column :shows, :venue, :string
    add_column :shows, :venue_link, :string
    add_column :shows, :location, :string
    add_column :shows, :details, :string
  end

  def self.down
    remove_column :shows, :date, :string
    remove_column :shows, :venue, :string
    remove_column :shows, :venue_link, :string
    remove_column :shows, :location, :string
    remove_column :shows, :details, :string    
  end
end
