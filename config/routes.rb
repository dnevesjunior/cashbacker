Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#main'

  scope '/admin' do
    resources :offers do
      get 'update-status', to: 'offers#status'
    end
  end
end
