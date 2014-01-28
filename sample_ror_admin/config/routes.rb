SnapshotApp::Application.routes.draw do
  resources :topics

  resources :snapshots

  devise_for :users

  root :to => 'snapshots#index'

end
