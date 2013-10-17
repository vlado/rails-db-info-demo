RailsDbaDemo::Application.routes.draw do
  root to: 'welcome#index'
  mount RailsDba::Engine => "/rails/db"
end
