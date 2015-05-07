class RenameDiscussionsIdToDiscussionId < ActiveRecord::Migration
  def change
    rename_column :comments, :discussions_id, :discussion_id
  end
end
