Rails.application.routes.draw do
  resources :gallery_pictures
  resources :galleries
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope path_names: { new: "novo", edit: "editar" } do
    resources :posts, path: 'noticias'
    resources :banners
    resources :pages, path: 'paginas'
  end

  root 'posts#index'
end
