# course-ruby-rails
course: https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/
my repository: https://github.com/ViniciusFlag/course-ruby-rails.git

Models: São recursos de um aplicativo, como usuarios, postagens de blog, artigos, amigos, vagas de emprego, acoes, etc.
São os recursos utilizados pela aplicação, além disso, as models também precisa de uma camada de persistencia ou de banco de dados, ou seja,
no rails, as models se comunicam com as tabelas de um aplicativo

Views: É a interface do aplicativo, é o que o usuario vai ver na tela dele, as telas são compostas basicamente por html, css e javascript.
Atraves do Rials, nas visualizações também fazemos o uso de codigo Ruby, ou seja, usamos um tipo especifico de arquivo, que é declarado
desta forma: template.html.erb

Controller: É a camada de gerencimanto do aplicativo, é ele quem recebe e retorna as informações

para instalar o Rials:

gem install bundler
gem install webpacker # opicional
gem install rails # pode ser colocado a versão também colocando -v 0.0.0 (numero da versão)
rails new nome_projeto # comando para criar um novo projeto em rails
bundle install --without production # faz a configuracao de bundle menos o group production

Outros comandos:
gem list rails # lista as gems local
gem install rails -v 6.0.2.1

Como é o caminho
1- é definido uma rota que aponta para uma ação do Controller
2- o controller devolve chamando a pagina de acordo com a rota, normalmente, chamando o layout dentro do padrão do controller, por exemplo, PagesController

Comando rails:

# Para criar um controller
-- rails generate controller pages
-- rails generate scaffold NomeTabela campo:tipo # Para gerar a estrutura de banco de dados
-- rails db:migrate # executa as migrations do banco de dados
-- rails db:rollback
-- rails routes # mostra as rotas de cada função
-- rails routes --expanded -- mostra as rotas mais detalhadamente e com uma visualização melhor
-- rails routes --expanded | grep edit -- mostra as rotas mais detalhadamente e especifica como edit
-- rails generate migration crate_articles # cria uma migration vazia


# Configuração do VSCode
"emmet.includeLanguages": {
    "*.erb": "html",
    "ruby": "html"
}

# git
-- rm -rf .git # remove arquivo .git

# Heroku
brew install heroku/brew/heroku -- comando para instalar o heroku
heroku login

# form helper
-- é possivel criar um elemento que vai auxiliar seu view com formularios, a definição é feita destas formas: 
-- 1 (escopos): <%= form_with scope: :article, url: article_path, local: true do |f|%> #define um escopo ou modelo que fornece o nome do modelo como simbolo

# Testes automatizados
-- rails test
os teste são executados individualemente e a cada teste, é feito a inclusão no banco e em seguida o mesmo é limpo