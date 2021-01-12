Rails.application.routes.draw do
  get 'attendances/index'
  get 'attendances/show'
  post 'attendances/start_time'
  post 'attendances/end_time'
  get 'attendances/edit'
  patch 'attendances/update'

  get 'attendances/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
