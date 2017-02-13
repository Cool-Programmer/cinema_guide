class AddAttachmentFeaturedToCinemas < ActiveRecord::Migration
  def self.up
    change_table :cinemas do |t|
      t.attachment :featured
    end
  end

  def self.down
    remove_attachment :cinemas, :featured
  end
end
