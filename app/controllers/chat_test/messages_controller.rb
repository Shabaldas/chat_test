require_dependency "chat_test/application_controller"

module ChatTest
  class MessagesController < ApplicationController
    # before_action :set_conversation

    before_action do
      @conversation = Conversation.find(params[:conversation_id])
    end

    def index
      @messages = @conversation.messages
      @message = @conversation.messages.new
    end

    def new
      @message = @conversation.messages.new
    end

    def create
      @message = @conversation.messages.new(message_params)

      if @message.save
        redirect_to conversation_messages_path(@conversation)
      end
    end

    private

    def set_conversation
      @conversation = ChatTest::Conversation.find(params[:conversation_id])
    end

    def message_params
      params.require(:message).permit(:body, :user_id)
    end
  end
end
