ChatTest::Engine.routes.draw do
  devise_for :users, class_name: 'ChatTest::User', module: :devise

  root to: 'conversations#index'
  resources :messages
  resources :conversations do
    resources :messages
  end
end
