class Comment < ActiveRecord::Base
  attr_accessible :body, :micropost_id
  belongs_to :micropost
end
