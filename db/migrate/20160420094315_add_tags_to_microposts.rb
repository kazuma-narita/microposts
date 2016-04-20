class AddTagsToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :tags, :string
  end
end
