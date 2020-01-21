Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope path_names: { new: "novo", edit: "editar" } do
    resources :posts, path: 'noticias'
  end

  root 'posts#index'
end
