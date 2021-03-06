class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.string     :content, null:false
      t.references :user,    null: false, foreign_key: true
      t.references :room,    null: false, foreign_key: true
      t.references :cat,                  foreign_key: true
      t.timestamps
    end
  end
end
