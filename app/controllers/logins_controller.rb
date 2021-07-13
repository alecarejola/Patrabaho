class LoginsController < ApplicationController
    def login
    end
    def new_login
        @Email = params[:Email]
        @Password = params[:Password]

        @u = Register.find_by(email: @Email)

        if @u && @u.authenticate(@Password) then
            session[:user_info] =@u
        end

        redirect_to "/"
    end
    def logout
        session[:user_info] = nil

        redirect_to "/"
    end
end  