class MainController < ApplicationController
    def index
        flash[:notice] = "Logged in Successfully"
        flash[:alert] = "Invalid Email or password"
    end
end