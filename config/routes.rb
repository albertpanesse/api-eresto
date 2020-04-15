Rails.application.routes.draw do
  get 'table/statuses', to: 'table#statuses'
  get 'table/detail/:id', to: 'table#detail'
  post 'table/checkin', to: 'table#checkin'
  post 'table/checkout', to: 'table#checkout'

  post 'menu-category/create', to: 'menu_category#create'
  put 'menu-category/update', to: 'menu_category#update'
  delete 'menu-category/delete', to: 'menu_category#delete'
  get 'menu-category/one/:id', to: 'menu_category#one'
  get 'menu-category/many', to: 'menu_category#many'

  post 'menu/create', to: 'menu#create'
  put 'menu/update', to: 'menu#update'
  delete 'menu/delete', to: 'menu#delete'
  get 'menu/one/:id', to: 'menu#one'
  get 'menu/many', to: 'menu#many'

  post 'file/upload', to: 'file#upload'
end
