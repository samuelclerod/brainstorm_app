class RemoveAuthorFromIdeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :ideas, :author, :string
  end
end
