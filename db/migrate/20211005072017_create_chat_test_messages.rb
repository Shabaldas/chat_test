class CreateChatTestMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_test_messages do |t|
      t.text :body
      t.integer :conversation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
