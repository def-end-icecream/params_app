Rails.application.routes.draw do
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_action"
  end
end
