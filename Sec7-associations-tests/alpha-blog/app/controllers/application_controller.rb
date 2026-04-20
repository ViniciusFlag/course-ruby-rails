class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in? # desta forma, deixo o metodo visivel tanto para as views, quanto para os controllers

  # retorna os detalhes do usuario logado
  def current_user
      # verifica se a sessão do usuario esta ativa
      @current_user ||= User.find(session[:user_id]) if session[:user_id] # @current_user ||=, verifica se ja existe um usario ativo, para que não seja necessario ficar a todo momento fazendo a pesquisa no banco, sera feita apenas uma vez e sempre que quiser consultar algo sobre o usuario atual logado na sessão, a informação ja vai esta disponivel
  end

  # verifica se ja existe um usuario logado
  def logged_in?
      # para verificar, teremos que transformar o valor do current_user em booleano para saber se ele se mantem conectado ou nao, para isso usaremos a expressão (!!)
      !!current_user
  end

  # este metodo fara a verificaçao se o usuario nao esta logado 
  def require_user 
    if !logged_in?
        flash[:alert] = "You mus be logged in o perform that action!"
        redirect_to login_path
    end
  end
end
