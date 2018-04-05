module IFTTT
  module V1
    class BaseController < ApplicationController
      before_action :validate_service_key
      before_action :validate_action_fields, only: :create_new_thing


    end
  end
end
