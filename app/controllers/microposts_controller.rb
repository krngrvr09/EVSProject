class MicropostsController < ApplicationController
  before_filter :signed_in_user
  #before_filter :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Post created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_path
  end
  def upvote
    redirect_to root_path
    
  end

  def comment
    redirect_to root_path
    
  end

  
  
  def downvote
    redirect_to root_path
  end
  
  def vote
    micropost_id = params[:micropost_id]
    user_id = params[:item_user_id]
    puts "pwoeipoweiwpoeripeoriwpeoripweoripweoripweoriwpe"+micropost_id
    micropost = Micropost.find(micropost_id)
    puts "lololol"+micropost.id.to_s
    vote_rel = UpvoteRelationship.where(:micropost_id =>micropost_id, :user_id => current_user.id).first
    if not vote_rel.eql? nil
      if vote_rel.upvote_status.eql? 1
        puts "one hai one hai"
        vote_rel.upvote_status = -1
        temp = micropost.number_of_upvotes
        micropost.number_of_upvotes = temp - 1
      else
        puts "minus one hai minus one hai"
        vote_rel.upvote_status = 1
        temp = micropost.number_of_upvotes
        micropost.number_of_upvotes = temp + 1
      end
      vote_rel.save!
      micropost.save!
    else
      l=UpvoteRelationship.new(:micropost_id => micropost_id, :user_id => current_user.id, :upvote_status => 1)
      l.save!
    end

    redirect_to root_path
  end


  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end