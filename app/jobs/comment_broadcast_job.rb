class CommentBroadcastJob < ApplicationJob
  queue_as :default
  def perfom(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end
  
  private
  
  def render_comment(comment)
    CommentController.render partial: 'comments/comment', locals: { comment: comment }
  end
end