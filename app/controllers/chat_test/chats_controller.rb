# require_dependency "chat_test/application_controller"

# module ChatTest
#   class ChatsController < ApplicationController
#     before_action :set_chat, only: [:show, :edit, :update, :destroy]

#     def index
#       @chats = Chat.all
#     end

#     def show
#     end

#     def new
#       @chat = Chat.new
#       @chats = Chat.all
#     end

#     def edit
#     end

#     def create
#       @chat = Chat.new(chat_params)

#       respond_to do |format|
#         if @chat.save
#           ActionCable.server.broadcast 'room_channel', content: @chat
#           format.html { redirect_to @chat, notice: 'Chat was successfully created.' }
#           format.json { render :show, status: :created, location: @chat }
#           format.js
#         else
#           format.html { render :new }
#           format.json { render json: @chat.errors, status: :unprocessable_entity }
#         end
#       end
#     end

#     def update
#       respond_to do |format|
#         if @chat.update(chat_params)
#           format.html { redirect_to @chat, notice: 'Chat was successfully updated.'}
#           format.json { render :show, status: :ok, location: @chat }
#         else
#           format.html { render :edit }
#           format.json { render json: @chat.errors, status: :unprocessable_entity }
#         end
#       end
#     end

#     def destroy
#       @chat.destroy
#       ActionCable.server.broadcast 'remove_channel', content: @chat 

#       respond_to do |format|
#         format.html { redirect_to chats_url, notice: 'Chat was successfully destroyed.' }
#         format.json { head :no_content }
#         format.js
#       end
#     end

#     private
    
#     def set_chat
#       @chat = Chat.find(params[:id])
#     end

#     def chat_params
#       params.require(:chat).permit(:message)
#     end
#   end
# end
