class SessionsController < ApplicationController
    def new 
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)

        if user && user.authenticate(params[:session][:password])
            # as sessões permitem que o aplicativo mantenha um estado especifico para um usuario, como em um caso onde ele fez um login com sucesso
            # pode ser feito o armazenamento de uma ou mais informação do usuario que seja pertinente
            session[:user_id] = user.id # aqui estamos salvando o id de user na sessao do rails
            flash[:notice] = "Logged in successfully"
            redirect_to user
        else
            flash.now[:alert] = "This was something wrong with your login detail!"
            render "new", status: 401
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end
end