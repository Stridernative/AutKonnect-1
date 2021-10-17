class BusinessesController < ApplicationController
    before_action :redirect_if_not_logged_in 

    def index
        if params[:q]
         @businesses = Business.all.search(params[:q].downcase)
        else
        @businesses = Business.all
       end
    end
end
