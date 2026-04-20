class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy] # isto sera executado antes de qualquer outra ação, o only, faz com que apenas o que estiver nele tenha acesso ao set_article
    before_action :require_user, except: [:show, :index] # antes de qualquer acao, sera chamado a funcao, exceto a show e index que serao publicas
    before_action :require_same_user, only: [:edit, :update, :destroy]

    # article/id
    def show 
    end

    # article/root
    def index
        @articles = Article.paginate(page: params[:page], per_page: 5)
    end

    # article/new
    def new
        @article = Article.new # faz uma instancia inicial da classe
    end

    def edit
    end

    # conteudo do params retornado do submit de new: Parameters: {"authenticity_token"=>"[FILTERED]", "article"=>{"title"=>"Hello Rails", "description"=>"Hello Rails description"}, "commit"=>"Save Article"}
    def create
        @article = Article.new(article_params)
        @article.user = current_user # para que isso funcione, preciso configurar no ApplicationController para que todas as funções consigam ver
        if @article.save
            flash[:notice] = "Article was successfully created."
            redirect_to @article # article_path(@article)
        else
            render "new", status: 401 # renderiza a view new.html.erb, sem fazer um novo request
        end
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render "edit", status: 401
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private #tudo o que estiver em baixo sera privado, apenas este controllador tera acesso ao que for adicionado a baixo

    def set_article
        @article = Article.find(params[:id]) # este parametro é passado como um hash contente os parametros que foram informados pela url
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end

    # se o usuario atual nao for o mesmo do criado do atigo, nao podera fazer algumas determinadas acoes
    def require_same_user
        if current_user != @article.user
            flash[:alert] = "You can only edit or delete your onw artcle!"
            redirect_to @article
        end
    end

end
