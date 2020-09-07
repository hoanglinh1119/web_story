class Standard::HomeController < ApplicationController
    before_action :authenticate_user!
    layout 'page'
    def index
        
    end
    # def new
    #     @post = Post.new
    # end
    # def create
        
    # end
    # def configure
        
    # end
    
end
