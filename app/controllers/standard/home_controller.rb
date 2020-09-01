class Standard::HomeController < ApplicationController
    before_action :authenticate_user!
    layout 'page'
    def index
        
    end
end
