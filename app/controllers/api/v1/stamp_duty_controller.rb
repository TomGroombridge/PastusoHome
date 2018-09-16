module Api::V1
  class StampDutyController < ApplicationController

    def create
      property_value = params[:property_value].to_i
      stamp_duty = StampDuty.new(property_value).call
      render json: {stamp_duty: stamp_duty}
    end

  end
end