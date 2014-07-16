ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
  # map.root :controller => "raxml"

  # empty rout
  map.connect '', :controller => "raxml", :action => "index"

  # raxml as main controller
  map.connect ':action/:id'        , :controller => 'raxml'
  map.connect ':action/:id.:format', :controller => 'raxml'

  # all other routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
