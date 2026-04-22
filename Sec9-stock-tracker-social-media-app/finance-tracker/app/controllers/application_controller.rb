class ApplicationController < ActionController::Base
  before_action :authenticate_user! # Verifica se o usuario esta autenticado
  
end
