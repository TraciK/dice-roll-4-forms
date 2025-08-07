Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "homepage" })

  get("/dice/:number_of_dice/:how_many_sides",
      { :controller => "dice", :action => "roll_flexible" })

  get("/process_roll", { :controller => "dice", :action => "result_flexible" })
end
