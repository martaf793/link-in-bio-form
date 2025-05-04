Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", {:controller=> "items", :action=> "form"})
  post("/new_item", {:controller=> "items", :action=> "new"})
  get("/delete", {:controller=> "items", :action=>"delete"})
end
