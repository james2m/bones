Bones::Engine.routes.draw do
  get 'components' => 'components#index'
  get 'wireframes/(:action(.:format))', :controller => 'wireframes'
end