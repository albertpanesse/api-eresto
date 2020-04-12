Rails.application.routes.draw do
  get 'table/statuses', to: 'table#statuses'
  get 'table/detail/:id', to: 'table#detail'
  post 'table/checkin', to: 'table#checkin'
  post 'table/checkout', to: 'table#checkout'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
