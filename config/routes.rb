Rails.application.routes.draw do
  # Routes for the Ingredient resource:

  # CREATE
  get("/ingredients/new", { :controller => "ingredients", :action => "new_form" })
  post("/create_ingredient", { :controller => "ingredients", :action => "create_row" })

  # READ
  get("/ingredients", { :controller => "ingredients", :action => "index" })
  get("/ingredients/:id_to_display", { :controller => "ingredients", :action => "show" })

  # UPDATE
  get("/ingredients/:prefill_with_id/edit", { :controller => "ingredients", :action => "edit_form" })
  post("/update_ingredient/:id_to_modify", { :controller => "ingredients", :action => "update_row" })

  # DELETE
  get("/delete_ingredient/:id_to_remove", { :controller => "ingredients", :action => "destroy_row" })

  #------------------------------

  # Routes for the Recipe ingredient resource:

  # CREATE
  get("/recipe_ingredients/new", { :controller => "recipe_ingredients", :action => "new_form" })
  post("/create_recipe_ingredient", { :controller => "recipe_ingredients", :action => "create_row" })

  # READ
  get("/recipe_ingredients", { :controller => "recipe_ingredients", :action => "index" })
  get("/recipe_ingredients/:id_to_display", { :controller => "recipe_ingredients", :action => "show" })

  # UPDATE
  get("/recipe_ingredients/:prefill_with_id/edit", { :controller => "recipe_ingredients", :action => "edit_form" })
  post("/update_recipe_ingredient/:id_to_modify", { :controller => "recipe_ingredients", :action => "update_row" })

  # DELETE
  get("/delete_recipe_ingredient/:id_to_remove", { :controller => "recipe_ingredients", :action => "destroy_row" })

  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  get("/recipes/new", { :controller => "recipes", :action => "new_form" })
  post("/create_recipe", { :controller => "recipes", :action => "create_row" })

  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  get("/recipes/:id_to_display", { :controller => "recipes", :action => "show" })

  # UPDATE
  get("/recipes/:prefill_with_id/edit", { :controller => "recipes", :action => "edit_form" })
  post("/update_recipe/:id_to_modify", { :controller => "recipes", :action => "update_row" })

  # DELETE
  get("/delete_recipe/:id_to_remove", { :controller => "recipes", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
