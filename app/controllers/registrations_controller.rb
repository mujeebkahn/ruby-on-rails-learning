class RegistrationsController <ApplicationController
    def new
        # variables starting with @ are called instance variables
        # instance variables can be accessed in views and local variables can't 
        @user =  User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully Created an account"
        else
            render :new
        end
    end



    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end