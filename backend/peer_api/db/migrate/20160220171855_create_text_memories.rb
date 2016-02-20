class CreateTextMemories < ActiveRecord::Migration
  def change
    create_table :text_memories do |t|
      t.string :text
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end