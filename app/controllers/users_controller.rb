class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:message]

  def show
    @user = User.find(params[:id])
    @follow = Relationship.where(user_id: @user.id)
    @follower = Relationship.where(follow_id: @user.id)
    likes = Like.where(user_id: @user.id)
    if likes[0].nil?
    else
      @like_comments = Comment.where(id: likes[0].comment_id)
    end
    if user_signed_in?
      @currentUserEntry=Entry.where(user_id: current_user.id)
      @userEntry=Entry.where(user_id: @user.id)
      if @user.id == current_user.id
      else
        @currentUserEntry.each do |cu|
          @userEntry.each do |u|
            if cu.room_id == u.room_id then
              @isRoom = true
              @roomId = cu.room_id
            end
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def index
    @user = User.find(current_user.id)
    @users = User.all
    follow_list_id = []
    @comments = []
    if @user.relationships.nil? != true
      @user.relationships.each do |user|
        follow_list_id << user.follow_id
      end
      follow_list_id.each do |follow|
        @comments << Comment.where(user_id: follow).order(created_at: :desc)
      end
    end
  end

  def message
    @user=User.find(params[:id])
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(profile_params)
      flash[:notice] = "更新に成功しました！"
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = "更新に失敗しました…"
      redirect_to "/users/#{@user.id}"
    end
  end


  private

  def profile_params
    params.require(:user).permit(:name,:gender,:profile,:movie1_title,:movie1_text,:movie2_title,:movie2_text,:movie3_title,:movie3_text)
  end

end
