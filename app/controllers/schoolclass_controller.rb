class SchoolClassesController < ActionController::Base
    def new 
        @post = Post.new
    end
end
