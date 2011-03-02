Soami::Application.routes.draw do
  match '/auth/:provider/callback', :to => 'session#create'
  root :to => "welcome#index"
end