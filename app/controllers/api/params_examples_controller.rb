class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    # ?my_message=strawberry&second_message=pineapple
    message = params["my_message"]
    second_message = params["second_message"]
    @output_message = "My message is #{message} and the second message is #{second_message}."
    render "query_params.json.jb"
  end

end
