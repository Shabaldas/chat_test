class CreateChatTestConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_test_conversations do |t|
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
