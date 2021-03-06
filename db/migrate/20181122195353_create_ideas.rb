class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :author
      t.text :description
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
