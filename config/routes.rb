Rails.application.routes.draw do
  match "*route_not_found.:format", :to => "application#not_found", via: %i[get post patch put]
  match "*route_not_found",         :to => "application#not_found", via: %i[get post patch put]
end
