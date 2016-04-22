class RenameMcropostIdColumnToRavorites < ActiveRecord::Migration
  def change
    rename_column :favorites, :mcropost_id, :micropost_id
    
  end
end
