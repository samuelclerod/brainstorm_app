class RemoveAuthorFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :author, :string
  end
end
