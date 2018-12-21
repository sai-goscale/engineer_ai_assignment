class PhonesController < ApplicationController

  def assign
    requested_number = assign_params["number"]
    if requested_number && !Phone.is_valid_number?(requested_number)
      render json: {errors: "Not Valid Number"} && return
    end
    
    new_number = requested_number ? Phone.parse_number_to_int(requested_number) : Phone.generate_random_number
    puts new_number
    phone = Phone.new(number: new_number)
    phone_stored = false
    while !phone_stored
      begin
        phone_stored = true if phone.save!
      rescue ActiveRecord::RecordNotUnique => e
        phone.number = Phone.generate_random_number
      end  
    end

    render json: { phone: phone }
  end


  private
  def assign_params
    params.permit(:number)
  end
end
