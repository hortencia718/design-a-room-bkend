class UsersController < ApplicationController

   
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
        #    byebug
            @user = User.find_by(email: params[:email])
            # byebug
            if @user.valid?
                # && @user.authenticate(params[:password])
                
                # token_tag = encode_token({user_id: @user.id})
                    render json: @user
                # render json: {user: UserSerializer.new(@user), token: token_tag}
            else
                render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
               
            end
        end

            # def logout
            #     reset_session
            #     render json: {status: 200, logged_out: true}
            # end
       
   


        # def update
        #     @user.update(user_params)
        #     redirect_to user_path(@user)
        # end



            # def edit
            #     users =user.find(params[:id])
            #     render json: users
            # end


            # def destroy
            #     @user.destroy
            # end

            private
            def get_user
                @user =user.find(params[:id])
            end


        def user_params
            params.permit(:first_name, :last_name, :email, :password)
        end


end
    
