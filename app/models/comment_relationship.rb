class CommentRelationship < ActiveRecord::Base
  attr_accessible :micropost_id, :user_id, :comment_id
end
