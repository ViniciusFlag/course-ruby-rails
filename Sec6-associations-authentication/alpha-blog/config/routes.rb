Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
  # resources :articles, only: [:show] # desta forma, ele apenas utiliza a rota de show "excluindo" as demais
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] # desta forma, ele apenas utiliza a rota de show "excluindo" as demais
  resources :articles # desta forma, automaticamente o ruby ja entende que ele deve chamar as ações do crud, mas, além disso, ele tambem pode acessar todas as regra de um restfull
end
