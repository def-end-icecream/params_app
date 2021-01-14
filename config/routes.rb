Rails.application.routes.draw do
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"
    get "/name_path" => "params_examples#name_action"
    get "/guessing_game_path" => "params_examples#guessing_game_action"
  end
end
