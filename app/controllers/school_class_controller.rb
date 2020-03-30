class SchoolClassesController < ActionController::Base
   

    def new
        @school_class = SchoolClass.new
      end
end
