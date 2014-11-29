class UpvoteRelationship < ActiveRecord::Base
  attr_accessible :micropost_id, :upvote_status, :user_id
end
