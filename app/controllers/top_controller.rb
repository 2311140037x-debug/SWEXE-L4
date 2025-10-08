class TopController < ApplicationController
    def main
        if session[:login_uid] != nil
            render "main"
        else
            render "login"
        end
    end
    
    def login
        if params[:uid] == "kindai" && params[:pass] == "sanriko"
            session[:uid] = params[:uid]
            redirect_to top_main_path
        else
            render "error",status: 422
        end
        
    end
end
