module HomeHelper
    def resource_name
        :employee
    end

    def resource_class
        Employee
    end

    def resource
        @resource ||= Employee.new
    end

    def devise_mapping
        @devise_mapping ||= Devise.mappings[:employee]
    end
end
