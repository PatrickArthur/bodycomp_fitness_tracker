class AddAttachmentPictureToExercises < ActiveRecord::Migration
  def self.up
    change_table :exercises do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :exercises, :picture
  end
end
