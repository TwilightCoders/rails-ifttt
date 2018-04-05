module IFTTT
  class ApplicationController < Devise.parent_controller.constantize
    protect_from_forgery with: :exception
  end
end
