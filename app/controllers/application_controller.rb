class ApplicationController < ActionController::API
  def not_found
    not_found_response = {
      type: "flex",
      children: [
        { type: "text", message: "Error 404: Not found" }
      ]
    }
    render json: not_found_response
  end
end
