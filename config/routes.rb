Rails.application.routes.draw do
  get 'attendances/index'
  get 'attendances/show'
  post 'attendances/create'
  post 'attendances/edit'
  get 'attendances/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
