Rails.application.routes.draw do
  get 'table/statuses'
  get 'table/detail/:id', to: 'table#detail'
  	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
