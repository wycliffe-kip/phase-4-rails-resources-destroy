Rails.application.routes.draw do
#  when using all five RESTful routes, omit "only" option
  resources :birds
  # only: [:index, :show, :create, :update, :destroy]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
