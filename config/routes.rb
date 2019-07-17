Rails.application.routes.draw do
  #root route
  root 'front#index'

  get 'products/index', to: 'products#index', as: :listing_products
  get 'products/new', to: 'products#new', as: :new_product
  post 'products/create', to: 'products#create', as: :create_product
  get 'products/:product_id/show', to: 'products#show', as: :show_product
  get 'products/:product_id/edit', to: 'products#edit', as: :edit_product
  patch 'products/:product_id/update', to: 'products#update', as: :update_product
  delete 'products/:product_id/delete', to: 'products#delete', as: :delete_product

  #clients routes
  get 'clients/index', to: 'clients#index', as: :listing_clients
  get 'clients/new', to: 'clients#new', as: :new_client
  post 'clients/create', to: 'clients#create', as: :create_client
  get 'clients/:client_id/show', to: 'clients#show', as: :show_client
  get 'clients/:client_id/edit', to: 'clients#edit', as: :edit_client
  patch 'clients/:client_id/update', to: 'clients#update', as: :update_client
  delete 'clients/:client_id/delete', to: 'clients#delete', as: :delete_client

  #sales routes
  get 'sales/index', to: 'sales#index', as: :listing_sales
  get 'sales/new', to: 'sales#new', as: :new_sale
  post 'sales/create', to: 'sales#create', as: :create_sale
  post '/get_total', to: 'sales#get_total'
end
