Rails.application.routes.draw do
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"
    get "/name_path" => "params_examples#name_action"
    get "/guessing_query_path" => "params_examples#guessing_game_action"

    get "/segment_params_path/:wildcard" => "params_examples#segment_params_action"
    get "/guessing_segment_path/:guess" => "params_examples#guessing_game_action"

    post "/body_params_path" => "params_examples#body_params_action"
    post "/guessing_body_path" => "params_examples#guessing_game_action"
    post "/credentials_body_path" => "params_examples#credentials_body_action"
  end
end
