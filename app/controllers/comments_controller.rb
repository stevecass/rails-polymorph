class CommentsController < ApplicationController
  def index
    @commentable_type = params[:message_id] ? "messages" : "photos"
  end
end
