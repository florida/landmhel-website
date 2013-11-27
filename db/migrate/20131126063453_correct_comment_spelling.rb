class CorrectCommentSpelling < ActiveRecord::Migration
  def change
    rename_column :inquiries, :commment, :comment
  end
end
