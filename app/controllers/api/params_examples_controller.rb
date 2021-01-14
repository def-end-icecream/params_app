class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    # ?my_message=strawberry&second_message=pineapple
    message = params["my_message"]
    second_message = params["second_message"]
    @output_message = "My message is #{message} and the second message is #{second_message}."
    render "query_params.json.jb"
  end

  def name_action
    # params = {"my_name"=>"dani"}
    up_name = params["my_name"].upcase
    @output_message = "Your name is #{up_name}"
    if up_name.starts_with?("A")
      @output_message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "name.json.jb"
  end

  def guessing_game_action
    winning_number = 36
    user_guess = params[:guess].to_i
    if user_guess < winning_number
      @output_message = "Your guess is too low!"
    elsif user_guess > winning_number
      @output_message = "Your guess is too high!"
    else
      @output_message = "You WIN!"
    end
    render "guessing_game.json.jb"
  end

  def segment_params_action
    user_input = params[:wildcard]
    @output_message = "Your url segment message is #{user_input}"
    render "segment_params.json.jb"
  end

end
