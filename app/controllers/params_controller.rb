class ParamsController < ApplicationController

def body_params
  user = params["user_name"]
  password = params["user_password"]
  if user == "Hugh" && password == "Swordfish"
  output_message = "Valid credentials."
  else 
  output_message = "Invalid credentials"
  end
  render json: {message: output_message}
end


#   def query_params
#     input_name = params["name"].upcase
    

#     if input_name.upcase.first == "A"
#      output_message = "Hey, your name starts with the first letter of the alphabet!"
#     else
#     output_message = "Cool!"
#     end
#     render json: {message: "your name is #{input_name}. #{output_message}"}
#  end

#   def number_games
#     user_number_choice = params["user_number"].to_i
#     winning_number = 36
#     if user_number_choice < winning_number
#       message = "You guessed too low!"
#     elsif user_number_choice > winning_number
#       message = "You guessed too high!"
#     else 
#       message = "You win!"
#     end
#     render json: {to_user: message}
#   end

#   def url_segment
#     input_value = params["user_number"].to_i
#     winning_number = 36
#     if input_value < winning_number
#       render json: {message: "You guessed too low!"}
#     elsif input_value > winning_number
#       render json: {message: "You guessed too high!"}
#     else 
#       render json: {message: "You win!"}
#     end
#   end

end

