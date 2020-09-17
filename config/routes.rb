Rails.application.routes.draw do

  # root 'chutney#index'
  post '/' => "chutney#index", as: "root_post"
  get '/' => "chutney#index", as: "root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
