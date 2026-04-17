module ApplicationHelper
    def gravatar_for(user, option = { size: 80 }) # metodo auxiliar
        email_address = user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        size = option[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"

        image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block") 
    end

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
end
