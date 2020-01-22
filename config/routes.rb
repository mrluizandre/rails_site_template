Rails.application.routes.draw do
  devise_for :users, path_prefix: 'd'
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope path_names: { new: "novo", edit: "editar" } do
    resources :users, path: 'usuarios'
    resources :settings, path: 'ajustes'
    resources :gallery_pictures, path: 'itens_da_galeria'
    resources :galleries, path: 'galerias'
    resources :posts, path: 'noticias'
    resources :banners
    resources :pages, path: 'paginas'
  end

  root 'posts#index'
end
