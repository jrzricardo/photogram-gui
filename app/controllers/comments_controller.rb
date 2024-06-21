class CommentsController < ApplicationController
  def add
    author_id = params.fetch("query_author_id")
    photo_id = params.fetch("query_photo_id")
    new_comment = params.fetch("query_comment")

    the_comment = Comment.new
    the_comment.photo_id = photo_id
    the_comment.author_id = author_id
    the_comment.body = new_comment

    the_comment.save 

    redirect_to("/photos/#{photo_id.to_s}")
  end

end
