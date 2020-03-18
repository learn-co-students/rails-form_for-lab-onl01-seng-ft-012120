class SchoolClass < ActiveRecord::Base 

def class_info 
    self.title + " Room Number: " + self.room_number.to_s
end

end