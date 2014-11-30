class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @tabs = Tab.all
    end
  end
def showtabs
    if signed_in?
      @feed_items = Array.new
      @micropost = current_user.microposts.build
        @f_items = current_user.feed.paginate(page: params[:page])
        puts "f_items"+@feed_items.to_s
    @feed_list = current_user.feed.where(:tab_id => 1)

      puts "lllalalalalalalalallaallala"+@feed_list.length.to_s
      @feed_list.each do |i|
        @feed_items.push(i)
      end
      @tabs = Tab.all
    end
  end


  def help
  end

  def about
  end

  def contact
  end
end
