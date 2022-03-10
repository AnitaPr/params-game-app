class ParamsController < ApplicationController
  def query_params
    input_name = params["name"].upcase
    

    if input_name.upcase.first == "A"
     output_message = "Hey, your name starts with the first letter of the alphabet!"
    else
    output_message = "Cool!"
    end
    render json: {message: "your name is #{input_name}. #{output_message}"}
 end

  def number_games
    user_number_choice = params["user_number"].to_i
    winning_number = 36
    if user_number_choice < winning_number
      message = "You guessed too low!"
    elsif user_number_choice > winning_number
      message = "You guessed too high!"
    else 
      message = "You win!"
    end
    render json: {to_user: message}
  end
end

