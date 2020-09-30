class CompaniesController < ApplicationController

    skip_before_action :logged_in?, only: [:index]

    def index
        @companies = Company.all
        render json: @companies

    end
end
