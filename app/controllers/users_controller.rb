class UsersController < ApplicationController

#    before_action :get_user , [:show, :edit, :update]
   
    def index 
        @users = User.all
        render json: @users
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
         # # render json: @instance sends out all the attributes from AR of that
        # # instance
    end 


     def new
        user =user.new
        render json: user
     end
        

     def create
        @user = User.create!(user_params)
        if @user.valid?
            session[:user_id]=@user.id
            render json: @user
        else
            render json: {error: "USERNAME IS TAKEN PLEASE TRY AGAIN"}, status: 422   
        end
    end


        def login
           
            user=User.find_by(email: params[:email], password: params[:password])
            if @user
                render json: @user
            else
                render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
            end
        end
   


        # def update
        #     @user.update(user_params)
        #     redirect_to user_path(@user)
        # end



            # def destroy
            #     @user.destroy
            # end

            private
            def get_user
                @user =user.find(params[:id])
            end


        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :password)
        end


end
