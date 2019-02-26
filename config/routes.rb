Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  namespace :api do
    namespace :v1 do
      patch   '/poodles', to: 'poodles#update'
    end
  end
end
