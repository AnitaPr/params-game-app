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
end
