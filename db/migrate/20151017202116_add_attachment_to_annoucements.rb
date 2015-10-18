class AddAttachmentToAnnoucements < ActiveRecord::Migration
  def change
    unless column_exists? :announcements, :attachment
      add_column :announcements, :attachment, :string
    end
  end
end
