class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name ,:dob, :address, :company_id, :leaves, :role_id, :department_id, :designation_id, :manager_id])
    end
    def after_sign_in_path_for(resource)
        stored_location_for(resource) || employee_path
    end
end
