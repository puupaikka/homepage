class ContactController < ApplicationController
    protect_from_forgery
    def index
        if request.post? then
            @user = params["input"]
        else
            @user=""
        end
    end
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(users_params)
        if @user.save
            # 会員登録の場合は同時にログインしたいので下の1行が必要
            # session[:user_id] = @user.id
            flash[:notice] = "会員登録完了"
            redirect_to("/")
        else
            reder("users/new")
        end
    end

    def users_params
        params.require(:user).permit(:name, :email, :password)
    end
end
