class RelationshipsController < ApplicationController
    before_action :set_variables

    # def create
    #   user = User.find(params[:follow_id])
    #   following = current_user.follow(user)
    #   if following.save
    #     flash[:success] = 'ユーザーをフォローしました'
    #     redirect_to user
    #   else
    #     flash.now[:alert] = 'ユーザーのフォローに失敗しました'
    #     redirect_to user
    #   end
    # end
  
    # def destroy
    #   user = User.find(params[:follow_id])
    #   following = current_user.unfollow(user)
    #   if following.destroy
    #     flash[:success] = 'ユーザーのフォローを解除しました'
    #     redirect_to user
    #   else
    #     flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
    #     redirect_to user
    #   end
    # end


    def follow
      follow = current_user.relationships.new(user_id: @user.id)
      follow.follow_id = params[:user_id].to_i
      follow.save
    end
    
    def unfollow
      follow = current_user.relationships.find_by(follow_id: @user.id)
      follow.destroy
    end
    
    private
    
    def set_variables
      @user = User.find(params[:user_id])
      @id_name = "#follow-link-#{@user.id}"
    end
    
  
    def set_user
    # binding.pry
      user = User.find(params[:follow_id])
    end
end